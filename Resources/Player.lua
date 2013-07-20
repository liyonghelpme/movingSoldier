Player = class()
local simple = require "SimpleJson"
function Player:ctor(map)
    self.map = map
    self.bg = CCSprite:create("player.png") 
    self.bg:setAnchorPoint(ccp(0, 0))
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
        self.nextPosx = self.path[self.nextStep][1]*16
        self.nextPosy = self.path[self.nextStep][2]*16
        self:initSpeed()
    end
end
function Player:initNextPos()
    if self.nextStep <= #self.path then
        self.nextPosx = self.path[self.nextStep][1]*16
        self.nextPosy = self.path[self.nextStep][2]*16
        self:initSpeed()
    end
end
function Player:initSpeed()
    local x, y = self.bg:getPosition()
    local dx, dy = self.nextPosx-x, self.nextPosy-y
    local len = math.sqrt(dx*dx+dy*dy)
    self.speedX = dx/len*self.speed
    self.speedY = dy/len*self.speed
end
function Player:endMove()
    self.destination = nil
    self.path = nil
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
            local grid = getGrid(x, y)
            self.path = self.map.simplePath:findPath(grid[1], grid[2], self.destination[1], self.destination[2])
            self:initMove()
        elseif self.curStep >= #self.path then
            self:endMove()
        else
            self:moveStep(diff)
        end
    end
end

