require "Archer"
local simple = require "SimpleJson"
Soldier = class()
function Soldier:initAnimation()
    if self.runAnimation == nil then

        if self.specialSoldier ~= nil then
            self.specialSoldier:initAnimation()
        else
            local animation
            local cache = CCSpriteFrameCache:sharedSpriteFrameCache()
            
            cache:addSpriteFramesWithFile("run.plist")
            local frames = CCArray:create()
            for i = 0, 9, 1 do
                local frame = cache:spriteFrameByName("T000"..i..".png")
                frames:addObject(frame)
            end
            for i = 10, 20, 1 do
                local frame = cache:spriteFrameByName("T00"..i..".png")
                frames:addObject(frame)
            end

            animation = CCAnimation:createWithSpriteFrames(frames, 0.05)
            self.runAnimation = CCRepeatForever:create(CCAnimate:create(animation))

            cache:addSpriteFramesWithFile("attack.plist")
            local frames = CCArray:create()
            for i = 0, 20, 2 do
                local frame = cache:spriteFrameByName("attack"..i..".png")
                frames:addObject(frame)
            end

            animation = CCAnimation:createWithSpriteFrames(frames, 0.05)
            self.attackAnimation = CCRepeatForever:create(CCAnimate:create(animation))
            self.runAnimation:retain()
            self.attackAnimation:retain()
        end
    end
end
function Soldier:clearAnimation()
    print("clear animation")
    self.runAnimation:release()
    self.attackAnimation:release()
    self.runAnimation = nil
    self.attackAnimation = nil
end
function Soldier:runAction(act)
    if self.curAction ~= act then
        self.bg:stopAction(self.curAction)
    end
    self.curAction = act
    if act ~= nil then
        self.bg:runAction(act)
    end
end
function Soldier:clear()
    print("clear normal")
    self.bloodNode:removeFromParentAndCleanup(true)
    if self.debugNode ~= nil then
        self.debugNode:removeFromParentAndCleanup(true)
        self.debugNode = nil
    end
    self.world.redSoldiers[self] = nil
    self.world.blueSoldiers[self] = nil
end

function Soldier:registerUpdate()
    local function onEnterOrExit(tag)
        if tag == "enter" then
            self:initAnimation()
            local function updateState(diff)
                self:update(diff)
            end
            self.updateEntry = CCDirector:sharedDirector():getScheduler():scheduleScriptFunc(updateState, 0, false)
        elseif tag == "exit" then
            self:clearAnimation()
            self:clearGrids()
            self:clear()
            CCDirector:sharedDirector():getScheduler():unscheduleScriptEntry(self.updateEntry)
        end
    end
    self.bg:registerScriptHandler(onEnterOrExit)
end
function Soldier:ctor(world, kind, color, initPos, soldierType)
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
    self.maxForce = 5.4 * 60
    self.avoidForce = 350 * 60  
    self.kind = kind
    self.slowRadius = 100
    self.color = color
    --高度40 攻击的时候 
    self.size = {31, 40}
    self.attackRange = 10
    self.deleted = false
    self.attackTime = 0
    self.attackPeriod = 1
    self.health = 45
    self.attackValue = 8
    self.soldierType = soldierType
    
    if self.soldierType == SoldierTypes.ARCHER then
        self.specialSoldier = Archer.new(self)
        self.attackRange = 200
        self.attackPeriod = 1
        self.attackValue = 7
    end
    
    --v/frame
    self.maxVelocity = 60

    self.bg = CCSprite:create("whiteBall.png")
    if self.color == SoldierColor.RED then
        self.bg:setColor(ccc3(255, 0, 0))
    else
        self.bg:setColor(ccc3(0, 0, 255))
    end
    self:registerUpdate()
    
    self.bg:setPosition(ccp(initPos[1], initPos[2]))
    self:setGrids()

    self:initAnimation()
    self:runAction(self.runAnimation)
    self.bloodNode = nil
end
function Soldier:update(diff)
    if self.bloodNode ~= nil then
        self.bloodNode:removeFromParentAndCleanup(true)
    end

    local px, py = self.bg:getPosition()
    self.bloodNode = CCLabelTTF:create(""..self.health, "", 20)
    self.world.bg:addChild(self.bloodNode)
    self.bloodNode:setPosition(ccp(px, py+40))

    if self.state == 0 then
        self.target = self:findTarget()
        self.state = 1
    elseif self.state == 1 then
        if self.kind == SoldierKind.DYNAMIC then
            self:doMove(diff)
            if self.attacker == nil then
                self:findAttackTarget()
            elseif self.attacker.deleted then
                self.attack = nil
            else
                local att = self:checkAttack()
                if att then
                    self.attackTime = 0
                    self.state = 2
                    self:runAction(self.attackAnimation)
                end
            end
            self:clearGrids()
            self:setGrids()
        end
        self:debugShow()
    elseif self.state == 2 then
        self:doAttack(diff)
    end

    --clean
    if self.health <= 0 then
        self.deleted = true
        self:runAction(nil)
        self.bg:removeFromParentAndCleanup(true)

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
    local left = px-self.size[1]/2
    local bottom = py-self.size[2]/2
    local rect = CCRectMake(left, bottom, self.size[1], self.size[2])
    return rect
end

function Soldier:findTarget()
    local px, py = self.bg:getPosition()
    if self.color == SoldierColor.RED then
        return {780, py}
    else
        return {20, py}
    end
end

--调整bound的高度来确定是否可以上下攻击
function Soldier:checkAttack()
    --[[
    local px, py = self.bg:getPosition()
    local ox, oy = self.attacker.bg:getPosition()
    return py == oy
    --]]
    --y方向尽量在一条直线上
    local bound = self:getBoundBox()
    bound.origin.x = bound.origin.x-self.attackRange
    bound.origin.y = bound.origin.y+18
    bound.size.width = bound.size.width+self.attackRange*2 
    bound.size.height = bound.size.height-36

    local otherBound = self.attacker:getBoundBox()
    return bound:intersectsRect(otherBound)
end
--在邻居网格里面寻找攻击目标
--寻找最近的目标
--找到最近的要么移动去攻击 要么直接攻击
--如果没有找到则wander 到处移动 寻找目标 
--到达初始目的地 
function Soldier:findAttackTarget()
    local px, py = self.bg:getPosition()
    local bound = self:getBoundBox()
    bound.origin.x = bound.origin.x-self.attackRange
    bound.size.width = bound.size.width+self.attackRange*2

    local mapSize = self.world.mapSize

    local leftTile = math.floor(bound:getMinX()/40)
    local rightTile = math.ceil(bound:getMaxX()/40)-1
    local topTile = math.ceil(bound:getMaxY()/40)-1
    local bottomTile = math.floor(bound:getMinY()/40)

    leftTile = math.max(0, leftTile)
    rightTile = math.min(mapSize[1]-1, rightTile)
    bottomTile = math.max(0, bottomTile)
    topTile = math.min(mapSize[2]-1, topTile)

    local worldMap = self.world.grid
    local coff = self.world.coff
    local minDistance = 9999999
    local minTarget = nil
    local myCenter = {px, py} 

    for x = leftTile, rightTile, 1 do
        for y = bottomTile, topTile, 1 do
            local k = x*coff+y
            local g = worldMap[k]
            --print("mapKey", k)
            for gk, gv in pairs(g) do
                --最近的地方士兵
                if gk ~= self and gk.color ~= self.color then
                    local cx, cy = gk.bg:getPosition()
                    local center = {cx, cy}
                    local dist3 = distance2(myCenter, center)
                    --print("center distance", cx, cy, dist1, dist2, radius2)
                    if dist3 < minDistance then
                        minDistance = dist3
                        minTarget = gk
                    end
                end
            end
        end
    end
    if minTarget ~= nil then
        self.attacker = minTarget
    else
        self:simpleFindTarget()
    end
end
--如果基于网格没有找到攻击目标
--则简单遍历士兵列表寻找攻击目标
function Soldier:simpleFindTarget()
    local otherSoldiers
    if self.color == SoldierColor.RED then
        otherSoldiers = self.world.blueSoldiers
    else
        otherSoldiers = self.world.redSoldiers
    end
    local minDistance = 999999
    local minTarget = nil
    local px, py = self.bg:getPosition()
    local myCenter = {px, py}
    for k, v in pairs(otherSoldiers) do
        local ox, oy = k.bg:getPosition()
        local center = {ox, oy}
        local dist = distance2(myCenter, center)
        if dist < minDistance then
            minDistance = dist
            minTarget = k
        end
    end
    if minTarget ~= nil then
        self.attacker = minTarget
    end
end

function Soldier:collisionAvoid()
    local px, py = self.bg:getPosition()
    --获取小球 附近可能碰撞体影响范围 -60 + 60
    --
    local bound = self:getBoundBox()
    bound.origin.x = bound.origin.x-self.attackRange
    bound.size.width = bound.size.width+self.attackRange*2 

    local probeDist = 100
    local mapSize = self.world.mapSize

    local leftTile = math.floor(bound:getMinX()/40)
    local rightTile = math.ceil(bound:getMaxX()/40)-1
    local topTile = math.ceil(bound:getMaxY()/40)-1
    local bottomTile = math.floor(bound:getMinY()/40)
    
    --[[
    local leftTile = math.floor((px-probeDist)/40)
    local rightTile = math.ceil((px+probeDist)/40)-1
    local topTile = math.ceil((py+probeDist)/40)-1
    local bottomTile = math.floor((py-probeDist)/40)
    --]]

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
    local sca = magnitude(self.velocity)/self.maxVelocity
    local ahead = {px+vd[1]*probeDist*sca, py+vd[2]*probeDist*sca}
    local ahead2 = {px+vd[1]*probeDist/2*sca, py+vd[2]*probeDist/2*sca}
    
    --我的半径 + 对方的半径
    local radius2 = 30*30
    local twoBallRadius2 = 30*30
    local myCenter = {px, py}
    --print("avoidance", leftTile, rightTile, bottomTile, topTile)
    --print("ahead", simple:encode(ahead), simple:encode(ahead2))
    self.ahead = ahead

    --local bound = self:getBoundBox()
    
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
                    if dist1 < radius2 or dist2 < radius2 or dist3 < radius2 then
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
        --self.bg:setOpacity(128)
        avoidanceForce = {ahead[1]-mx, ahead[2]-my}
        --s 20加速度 5s 才能避让
        --30frame  1frame 200  = 6000
        --60frame  1frame 200  = 12000
        --60frame  1frame 300  = 18000 
        avoidanceForce = normalize(avoidanceForce)
        --avoidanceForce[1] = avoidanceForce[1]*12000
        --avoidanceForce[2] = avoidanceForce[2]*12000
        avoidanceForce = scaleBy(avoidanceForce, self.avoidForce)
        --print("avoidanceForce", simple:encode(avoidanceForce))
    else
        --self.bg:setOpacity(255)
    end
     
    return avoidanceForce
end
--arrival
function Soldier:seek()
    local px, py = self.bg:getPosition()
    local dir = {self.target[1]-px, self.target[2]-py}
    local dist = magnitude(dir)

    dir = normalize(dir)
    --1frame 为这个速度变化量的 1/60?
    if dist < self.slowRadius then
        dir[1] = dir[1]*self.maxVelocity*(dist/self.slowRadius)
        dir[2] = dir[2]*self.maxVelocity*(dist/self.slowRadius)
    else
        dir[1] = dir[1]*self.maxVelocity
        dir[2] = dir[2]*self.maxVelocity
    end
    --跟帧率相关的 steering 如果排除时间因素的话
    local steering = {(dir[1]-self.velocity[1])/60, (dir[2]-self.velocity[2])/60}
    return steering
end

--因为碰撞 导致无法靠近目标
--所以两边都挤在了一起
function Soldier:wander()
    local px, py = self.bg:getPosition()
    local disx = self.target[1] - px
    local disy = self.target[2] - py
    if math.abs(disx) < 10 and math.abs(disy) < 10 then
        local maxX, maxY = self.world.maxX, self.world.maxY
        local rx, ry = math.random(maxX), math.random(maxY)
        self.target = {rx, ry} 
    end
end

function Soldier:doMove(diff)
    if self.attacker ~= nil and not self.attacker.deleted then
        local ax, ay = self.attacker.bg:getPosition()
        self.target = {ax, ay}
    elseif self.attacker == nil then
        self:wander()
    end

    --if self.world.targetPoint ~= nil then
    --    self.target = self.world.targetPoint
    --end
    local steering = self:seek()
    
    local avoidanceForce = self:collisionAvoid()
    self.avoidanceForce = avoidanceForce
    --调整速度向量的吸引力
    steering[1] = steering[1]+avoidanceForce[1] 
    steering[2] = steering[2]+avoidanceForce[2]

    --/s 最大加速度 100  加速度 == 0 则返回0 
    steering = truncate(steering, self.maxForce)
    steering = scaleBy(steering, 1/self.mass)

    self.steering = steering

    local vx, vy = self.velocity[1], self.velocity[2]
    vx = vx+steering[1]*diff
    vy = vy+steering[2]*diff

    local px, py = self.bg:getPosition()
    self.velocity = truncate({vx, vy}, self.maxVelocity)
    vx = self.velocity[1]
    vy = self.velocity[2]
    self.bg:setPosition(px+vx*diff, py+vy*diff)
    if vx > 0 then
        self.bg:setFlipX(false)
    elseif vx < 0 then
        self.bg:setFlipX(true)
    end
    
    --local px, py = self.bg:getPosition()
    --print("muPos", vx, vy, steering[1], steering[2], avoidanceForce[1], avoidanceForce[2])
end
--攻击的目标
--不用寻路地面环境比较简单不是迷宫
function Soldier:doAttack(diff)
    if self.attacker.deleted then
        self.state = 1
        self:runAction(self.runAnimation)
        self.attacker = nil
        return
    end
    local att = self:checkAttack()
    if not att then
        self:runAction(self.runAnimation)
        self.state = 1
        return
    end
    self.attackTime = self.attackTime + diff
    if self.attackTime >= self.attackPeriod then
        self.attackTime = self.attackTime - 1
        if self.specialSoldier ~= nil then
            self.specialSoldier:doAttack()
        else
            self.attacker.health = self.attacker.health - self.attackValue
        end
    end

    local px, py = self.bg:getPosition()
    local tx, ty = self.attacker.bg:getPosition()
    local dx = tx-px
    if dx > 0 then
        self.bg:setFlipX(false)
    elseif dx < 0 then
        self.bg:setFlipX(true)
    end
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


