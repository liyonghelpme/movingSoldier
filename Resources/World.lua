require "Soldier"
World = class()
function World:registerUpdate()
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

function World:update(diff)
    --self:debugShow()
end
function World:ctor()
    self.bg = CCLayer:create()
    self.grid = {}
    self.mapSize = {20, 12}
    self.tileSize = {40, 40}
    self.coff = 1000
    self:registerUpdate()

    for y = 0, self.mapSize[2]-1, 1 do
        for x = 0, self.mapSize[1]-1, 1 do
            --print("initGrid", x, y)
            self.grid[x*self.coff+y] = {}
        end
    end
    math.randomseed(0)
    for i =1, 1, 1 do
         local s = Soldier.new(self)
         self.bg:addChild(s.bg)
    end
end
function World:setGrid(x, y, obj)
    --print("setGrid", x, y, obj)
    local g = self.grid[x*self.coff+y]
    g[obj] = true
end
function World:clearGrid(x, y, obj)
    local g = self.grid[x*self.coff+y] 
    g[obj] = nil
end
function World:debugShow()
    if self.debugNode ~= nil then
        self.debugNode:removeFromParentAndCleanup(true)
    end
    self.debugNode = CCNode:create()
    self.bg:addChild(self.debugNode)

    for k, v in pairs(self.grid) do
        local count = 0
        for tk, tv in pairs(v) do
            count = 1
            break
        end
        if count > 0 then
            local temp = CCSprite:create("board.png")
            self.debugNode:addChild(temp)
            local x, y = k/self.coff, k%self.coff 
            temp:setPosition(ccp(x*40+20, y*40+20))
        end
    end
end
