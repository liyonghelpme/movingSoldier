local simple = require "SimpleJson"
Soldier = class()
function Soldier:registerUpdate()
    local function onEnterOrExit(tag)
        if tag == "enter" then
            local function updateState(diff)
                self:update(diff)
            end
            self.updateEntry = CCDirector:sharedDirector():getScheduler():scheduleScriptFunc(updateState, 0, false)
        elseif tag == "exit" then
            CCDirector:sharedDirector():getScheduler():unscheduleScriptEntry(self.updateEntry)
        end
    end
    self.bg:registerScriptHandler(onEnterOrExit)
end
function Soldier:ctor(world)
    self.world = world
    self.target = nil
    self.attacker = nil
    self.grids = {}
    self.state = 0
    self.velocity = {0, 0}
    self.avoidanceForce = {0, 0}
    self.avoidanceGrid = {}
    self.steering = {0, 0}
    self.ahead = {0, 0}
    self.mass = 20
    self.maxForce = 0.4
    --v/frame
    self.maxVelocity = 3

    self.bg = CCSprite:create("ball.png")
    self:registerUpdate()
    
    local mapSize = self.world.mapSize
    local px = (math.random(mapSize[1])-1)*40+20
    local py = (math.random(mapSize[2])-1)*40+20

    self.bg:setPosition(ccp(px, py))
    self:setGrids()
end
function Soldier:update(diff)
    if self.state == 0 then
        self.target = self:findTarget()
        self.state = 1
    elseif self.state == 1 then
        self:doMove(diff)
        self:clearGrids()
        self:setGrids()
        self:debugShow()
    end
end
function Soldier:clearGrids()
    for k, v in ipairs(self.grids) do
        self.world:clearGrid(v[1], v[2], self)
    end
    self.grids = {}
end
--offsetx offsety  
function Soldier:setGrids()
    local bound = self:getBoundBox()
    local leftTile = math.floor(bound:getMinX()/40)
    local rightTile = math.ceil(bound:getMaxX()/40)-1
    local topTile = math.ceil(bound:getMaxY()/40)-1
    local bottomTile = math.floor(bound:getMinY()/40)
    local mapSize = self.world.mapSize
    leftTile = math.max(0, leftTile)
    rightTile = math.min(mapSize[1]-1, rightTile)
    bottomTile = math.max(0, bottomTile)
    topTile = math.min(mapSize[2]-1, topTile)
    for y = bottomTile, topTile, 1 do
        for x = leftTile, rightTile, 1 do
            self.world:setGrid(x, y, self)
            table.insert(self.grids, {x, y})
        end
    end
end
function Soldier:getBoundBox()
    local px, py = self.bg:getPosition()
    local left = px-20
    local bottom = py-20
    local rect = CCRectMake(left, bottom, 40, 40)
    return rect
end

function Soldier:findTarget()
    local rx = math.random(self.world.mapSize[1])-1
    local ry = math.random(self.world.mapSize[2])-1
    return {rx*40+20, ry*40+20}
end

function Soldier:collisionAvoid()
    local px, py = self.bg:getPosition()

    --获取小球 附近可能碰撞体影响范围 -60 + 60
    local probeDist = 100

    local mapSize = self.world.mapSize
    --[[
    local bound = self:getBoundBox()
    bound.origin.x = bound.origin.x - 40
    bound.origin.y = bound.origin.y - 40
    bound.size.width = bound.size.width+80
    bound.size.height = bound.size.height+80

    local leftTile = math.floor(bound:getMinX()/40)
    local rightTile = math.ceil(bound:getMaxX()/40)-1
    local topTile = math.ceil(bound:getMaxY()/40)-1
    local bottomTile = math.floor(bound:getMinY()/40)
    --]]
    
    local leftTile = math.floor((px-probeDist)/40)
    local rightTile = math.ceil((px+probeDist)/40)-1
    local topTile = math.ceil((py+probeDist)/40)-1
    local bottomTile = math.floor((py-probeDist)/40)

    leftTile = math.max(0, leftTile)
    rightTile = math.min(mapSize[1]-1, rightTile)
    bottomTile = math.max(0, bottomTile)
    topTile = math.min(mapSize[2]-1, topTile)

    --获取小球 移动方向 上的冲突碰撞体
    local worldMap = self.world.grid
    local coff = self.world.coff
    local minDistance = 9999999
    local minTarget = nil

    local vd = normalize(self.velocity)
    local ahead = {px+vd[1]*probeDist, py+vd[2]*probeDist}
    local ahead2 = {px+vd[1]*probeDist/2, py+vd[2]*probeDist/2}
    local radius2 = 20*20
    local myCenter = {px, py}
    --print("avoidance", leftTile, rightTile, bottomTile, topTile)
    --print("ahead", simple:encode(ahead), simple:encode(ahead2))
    self.ahead = ahead
    
    self.avoidanceGrid = {}
    for x = leftTile, rightTile, 1 do
        for y = bottomTile, topTile, 1 do
            local k = x*coff+y
            local g = worldMap[k]
            --print("mapKey", k)
            for gk, gv in pairs(g) do
                if gk ~= self then
                    local cx, cy = gk.bg:getPosition()
                    local center = {cx, cy}
                    local dist1 = distance2(ahead, center) 
                    local dist2 = distance2(ahead2, center)
                    local dist3 = distance2(myCenter, center)
                    --print("center distance", cx, cy, dist1, dist2, radius2)
                    if dist1 < radius2 or dist2 < radius2 then
                        local hdist = distance2(myCenter, center)
                        if hdist < minDistance then
                            minDistance = hdist
                            minTarget = gk
                        end
                    end

                    table.insert(self.avoidanceGrid, {x, y})
                end
            end
        end
    end

    local avoidanceForce = {0, 0}
    if minTarget ~= nil then
        --检测最近威胁的 steer力
        local mx, my = minTarget.bg:getPosition()
        avoidanceForce = {ahead[1]-mx, ahead[2]-my}
        --s 20加速度 5s 才能避让
        --30frame  1frame 200  = 6000
        --60frame  1frame 200  = 12000
        --60frame  1frame 300  = 18000 
        avoidanceForce = normalize(avoidanceForce)
        avoidanceForce[1] = avoidanceForce[1]*12000
        avoidanceForce[2] = avoidanceForce[2]*12000
        print("avoidanceForce", simple:encode(avoidanceForce))
    end
     
    return avoidanceForce
end

function Soldier:seek()
    local px, py = self.bg:getPosition()
    local dir = {self.target[1]-px, self.target[2]-py}
    dir = normalize(dir)
    --100px / s
    dir[1] = dir[1]*self.maxVelocity
    dir[2] = dir[2]*self.maxVelocity
    --跟帧率相关的 steering 如果排除时间因素的话
    local steering = {dir[1]-self.velocity[1], dir[2]-self.velocity[2]}
    return steering
end
function Soldier:doMove(diff)
    local steering = self:seek()

    
    local avoidanceForce = self:collisionAvoid()
    self.avoidanceForce = avoidanceForce
    --调整速度向量的吸引力
    steering[1] = steering[1]+avoidanceForce[1] 
    steering[2] = steering[2]+avoidanceForce[2]

    --/s 最大加速度 100  加速度 == 0 则返回0 
    steering = truncate(steering, self.maxForce)
    self.steering = steering

    local vx, vy = self.velocity[1], self.velocity[2]
    vx = vx+steering[1]*diff
    vy = vy+steering[2]*diff

    self.velocity = truncate({vx, vy}, 100)
    vx = self.velocity[1]
    vy = self.velocity[2]
    self.bg:setPosition(px+vx*diff, py+vy*diff)
    --local px, py = self.bg:getPosition()
    --print("muPos", vx, vy, steering[1], steering[2], avoidanceForce[1], avoidanceForce[2])
end
--攻击的目标
--不用寻路地面环境比较简单不是迷宫
function Soldier:doAttack()
end

function Soldier:handlerCollision()
end

function Soldier:debugShow()
    if self.debugNode ~= nil then
        self.debugNode:removeFromParentAndCleanup(true)
    end
    local px, py = self.bg:getPosition()

    self.debugNode = CCNode:create()
    self.world.bg:addChild(self.debugNode)

    --当前速度 最大
    local temp = CCSprite:create("line.png")
    temp:setColor(ccc3(255, 0, 0))
    self.debugNode:addChild(temp)
    local angel = math.atan2(self.velocity[2], self.velocity[1])
    temp:setRotation(-angel*180/math.pi)
    temp:setAnchorPoint(ccp(0, 0.5))
    temp:setPosition(ccp(px, py))
    local lv = magnitude(self.velocity)
    temp:setScaleX(lv/100)

    for k,v in ipairs(self.grids) do
        local temp = CCSprite:create("board.png")
        self.debugNode:addChild(temp)
        temp:setPosition(ccp(v[1]*40+20, v[2]*40+20))
    end

    local temp = CCSprite:create("soldier.png")
    temp:setScale(10/40)
    self.debugNode:addChild(temp)
    temp:setColor(ccc3(0, 0, 255))
    temp:setPosition(ccp(self.target[1], self.target[2]))

    --[[
    temp = CCSprite:create("line.png")
    temp:setPosition(ccp(px, py))
    local angle = math.atan2(self.avoidanceForce[2], self.avoidanceForce[1])
    temp:setRotation(-angel*180/math.pi)
    temp:setAnchorPoint(ccp(0, 0.5))
    temp:setScaleX(magnitude(self.avoidanceForce))
    temp:setScaleY(0.4)
    self.debugNode:addChild(temp)
    --]]


    temp = CCSprite:create("line.png")
    temp:setPosition(ccp(px, py))
    local angle = math.atan2(self.steering[2], self.steering[1])
    temp:setRotation(-angel*180/math.pi)
    temp:setAnchorPoint(ccp(0, 0.5))
    temp:setScaleX(magnitude(self.steering)/100)
    temp:setScaleY(0.4)
    self.debugNode:addChild(temp)

    


    for k, v in ipairs(self.avoidanceGrid) do
        local temp = CCSprite:create("whiteBoard.png")
        temp:setColor(ccc3(255, 0, 0))
        self.debugNode:addChild(temp)
        temp:setPosition(ccp(v[1]*40+20, v[2]*40+20))
    end

    temp = CCSprite:create("line.png")
    local dax, day = self.ahead[1]-px, self.ahead[2]-py
    temp:setPosition(ccp(px, py))
    local angle = math.atan2(day, dax)
    temp:setRotation(-angel*180/math.pi)
    temp:setAnchorPoint(ccp(0, 0.5))
    temp:setScaleX(magnitude({dax, day})/100)
    temp:setScaleY(0.4)
    temp:setColor(ccc3(255, 255, 0))
    self.debugNode:addChild(temp)

end


