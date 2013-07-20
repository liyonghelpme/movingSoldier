Player = class()
local simple = require "SimpleJson"
function Player:initAnimation()
    if self.idle_down == nil then
        local array = CCArray:create()
        local frame
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(0, 256, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(32, 256, 32, 32))
        array:addObject(frame)
        local animation = CCAnimation:createWithSpriteFrames(array, 0.2)
        self.idle_down = CCRepeatForever:create(CCAnimate:create(animation))
        self.idle_down:retain()

        array = CCArray:create()
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(0, 64, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(32, 64, 32, 32))
        array:addObject(frame)

        animation = CCAnimation:createWithSpriteFrames(array, 0.2)
        self.idle_right = CCRepeatForever:create(CCAnimate:create(animation))
        self.idle_right:retain()


        array = CCArray:create()
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(0, 160, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(32, 160, 32, 32))
        array:addObject(frame)

        animation = CCAnimation:createWithSpriteFrames(array, 0.2)
        self.idle_up = CCRepeatForever:create(CCAnimate:create(animation))
        self.idle_up:retain()


        array = CCArray:create()
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(0, 32, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(32, 32, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(64, 32, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(96, 32, 32, 32))
        array:addObject(frame)
        
        animation = CCAnimation:createWithSpriteFrames(array, 0.2)
        self.walk_right = CCRepeatForever:create(CCAnimate:create(animation))
        self.walk_right:retain()

        array = CCArray:create()
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(0, 128, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(32, 128, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(64, 128, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(96, 128, 32, 32))
        array:addObject(frame)
        
        animation = CCAnimation:createWithSpriteFrames(array, 0.2)
        self.walk_up = CCRepeatForever:create(CCAnimate:create(animation))
        self.walk_up:retain()

        array = CCArray:create()
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(0, 224, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(32, 224, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(64, 224, 32, 32))
        array:addObject(frame)
        frame = CCSpriteFrame:create("clotharmor.png", CCRectMake(96, 224, 32, 32))
        array:addObject(frame)
        
        animation = CCAnimation:createWithSpriteFrames(array, 0.2)
        self.walk_down = CCRepeatForever:create(CCAnimate:create(animation))
        self.walk_down:retain()
        
    end
end
function Player:clearAnimation()
    self.idle_down:release()
    self.idle_down = nil

    self.idle_right:release()
    self.idle_right = nil

    self.idle_up:release()
    self.idle_up = nil

    self.walk_down:release()
    self.walk_down = nil

    self.walk_right:release()
    self.walk_right = nil

    self.walk_up:release()
    self.walk_up = nil
end
function Player:onEnter()
    self:initAnimation()
end
function Player:onExit()
    self:clearAnimation()
end

function Player:ctor(map)
    self.map = map
    self.bg = CCSprite:create("player.png") 
    self.bg:setAnchorPoint(ccp(0.5, 0.5))
    registerUpdate(self)
    
    self.destination = nil
    self.path = nil
    self.nextDestination = nil
    self.curStep = nil
    self.nextStep = nil

    self.nextPosx = nil
    self.nextPosy = nil
    self.speedX = nil
    self.speedY = nil
    self.speed = 100
    registerEnterOrExit(self)
    self.oritation = Oritation.DOWN

    self:initAnimation()
    self:idle()
end

function Player:move()
    if self.oritation == Oritation.DOWN then
        runAction(self, self.walk_down)
        self.bg:setFlipX(false)
    elseif self.oritation == Oritation.UP then
        runAction(self, self.walk_up)
        self.bg:setFlipX(false)
    elseif self.oritation == Oritation.RIGHT  then
        runAction(self, self.walk_right)
        self.bg:setFlipX(false)
    elseif self.oritation == Oritation.LEFT then
        runAction(self, self.walk_right)
        self.bg:setFlipX(true)
    end
end

function Player:idle()
    if self.oritation == Oritation.DOWN then
        runAction(self, self.idle_down)
        self.bg:setFlipX(false)
    elseif self.oritation == Oritation.UP then
        runAction(self, self.idle_up)
        self.bg:setFlipX(false)
    elseif self.oritation == Oritation.RIGHT  then
        runAction(self, self.idle_right)
        self.bg:setFlipX(false)
    elseif self.oritation == Oritation.LEFT then
        runAction(self, self.idle_right)
        self.bg:setFlipX(true)
    end
end

function Player:goto(np)
    local np = getGrid(np.x, np.y)
    if self.destination == nil then
        self.destination = np
    else
        self.nextDestination = np
    end
    --print(simple:encode(self.destination))
end
function Player:initMove()  
    self.curStep = 1
    if #self.path > self.curStep then
        self.nextStep = self.curStep+1
        self:initNextPos()
    end
end
function Player:initNextPos()
    if self.nextStep <= #self.path then
        self.nextPosx = self.path[self.nextStep][1]*16+8
        self.nextPosy = self.path[self.nextStep][2]*16+8
        self:initSpeed()
    end
end
function Player:initSpeed()
    local x, y = self.bg:getPosition()
    local dx, dy = self.nextPosx-x, self.nextPosy-y
    local len = math.sqrt(dx*dx+dy*dy)
    if math.abs(dx) > math.abs(dy) then
        if dx > 0 then
            self.oritation = Oritation.RIGHT
        else
            self.oritation = Oritation.LEFT
        end
    else
        if dy > 0 then
            self.oritation = Oritation.UP
        else
            self.oritation = Oritation.DOWN
        end
    end
    self:move()

    self.speedX = dx/len*self.speed
    self.speedY = dy/len*self.speed
end

function Player:endMove()
    self.destination = nil
    self.path = nil
    self:idle()
end

function Player:moveStep(diff)
    local x, y = self.bg:getPosition()
    if math.abs(self.nextPosx-x) < 1 and math.abs(self.nextPosy-y) < 1 then
        if self.nextDestination ~= nil then
            self.destination = self.nextDestination
            self.path = nil
            self.nextDestination = nil
        else
            self.curStep = self.nextStep
            self.nextStep = self.curStep+1
            self:initNextPos()
        end
    else
        local dx, dy = self.speedX*diff, self.speedY*diff
        self.bg:setPosition(ccp(x+dx, y+dy))
    end
end
function Player:update(diff)
    if self.destination ~= nil then
        if self.path == nil then
            local x, y = self.bg:getPosition()
            local grid = soldierPosToGrid(x, y)
            self.path = self.map.simplePath:findPath(grid[1], grid[2], self.destination[1], self.destination[2])
            self:initMove()
        elseif self.curStep >= #self.path then
            self:endMove()
        else
            self:moveStep(diff)
        end
    end
end

