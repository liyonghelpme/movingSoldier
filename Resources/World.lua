require "Soldier"
World = class()
function World:adjustPosition(diff)
    local cx, cy = self.bg:getPosition()
    local smooth = diff*5
    smooth = math.min(smooth, 1)
    local px = cx*(1-smooth)+smooth*self.tx
    local py = cy*(1-smooth)+smooth*self.ty
    self.bg:setPosition(ccp(px, py))

end
function World:registerUpdate()
    local function onEnterOrExit(tag)
        if tag == "enter" then
            local function updateState(diff)
                self:update(diff)
                self:adjustPosition(diff)
            end
            self.updateEntry = CCDirector:sharedDirector():getScheduler():scheduleScriptFunc(updateState, 0, false)
        elseif tag == "exit" then
            CCDirector:sharedDirector():getScheduler():unscheduleScriptEntry(self.updateEntry)
        end
    end
    self.bg:registerScriptHandler(onEnterOrExit)

    local maxX = self.maxX
    local maxY = self.maxY
    local vs = CCDirector:sharedDirector():getVisibleSize()

    local touchBeginPoint
    local sx, sy
    self.tx, self.ty = self.bg:getPosition()
    local inMove = false
    local function onTouchBegan(x, y)
        touchBeginPoint = {x=x, y=y}
        sx, sy = self.bg:getPosition()
        self.tx, self.ty = self.bg:getPosition()
        return true
    end

    local function onTouchMoved(x, y)
        inMove = true
        self.tx = x-touchBeginPoint.x+sx
        self.tx = math.min(math.max(self.tx, -(maxX-vs.width)), 0)
        self.ty = y-touchBeginPoint.y+sy
        self.ty = math.min(math.max(self.ty, -(maxY-vs.height)), 0)
    end

    local function onTouchEnded(x, y)
    end

    local function onTouch(eventType, x, y)
        if eventType == "began" then   
            return onTouchBegan(x, y)
        elseif eventType == "moved" then
            return onTouchMoved(x, y)
        else
            return onTouchEnded(x, y)
        end
    end

    self.bg:registerScriptTouchHandler(onTouch)
    self.bg:setTouchEnabled(true)
end

function World:update(diff)
    --self:debugShow()
end

function World:ctor()
    self.bg = CCLayer:create()
    local b0 = CCSprite:create("b0.png")
    self.bg:addChild(b0)
    b0:setAnchorPoint(ccp(0, 0))
    local b1 = CCSprite:create("b1.png")
    self.bg:addChild(b1)
    b1:setPosition(ccp(1024, 0))
    b1:setAnchorPoint(ccp(0, 0))
    local b2 = CCSprite:create("b2.png")
    self.bg:addChild(b2)
    b2:setPosition(ccp(2048, 0))
    b2:setAnchorPoint(ccp(0, 0))

    self.grid = {}
    self.mapSize = {76, 19}
    self.tileSize = {40, 40}
    self.maxX = self.mapSize[1]*self.tileSize[1]
    self.maxY = self.mapSize[2]*self.tileSize[2]

    self.coff = 1000
    self:registerUpdate()
    self.targetPoint = nil

    self.redSoldiers = {}
    self.blueSoldiers = {}

    for y = 0, self.mapSize[2]-1, 1 do
        for x = 0, self.mapSize[1]-1, 1 do
            --print("initGrid", x, y)
            self.grid[x*self.coff+y] = {}
        end
    end
    math.randomseed(0)
    
    local row = {237, 272, 303, 336, 368}
    local col = {137, 172, 207, 243, 280}
    local dx = 361-137
    local dy = 417-237
    for x=1, 1, 1 do
        for y=1, 1, 1 do
            for i =1, 3, 1 do
                for j=1, 5, 1 do
                    local s
                    s = Soldier.new(self, SoldierKind.DYNAMIC, SoldierColor.RED, {col[i]+dx*(x-1), row[j]+dy*(y-1)}, SoldierTypes.FIGHTER)
                    self.bg:addChild(s.bg)
                    self.redSoldiers[s] = true
                end
            end
        end
    end


    local row = {240, 273, 303, 334, 363}
    local col = {780, 810, 840, 870, 900}
    --local col = {2350, 2386, 2422, 2458, 2496}
    local dx = 2572-2350
    local dy = 417-237

    for x=1, 1, 1 do
        for y=1, 1, 1 do
            for i =1, 3, 1 do
                for j=1, 4, 1 do
                    local s
                    s = Soldier.new(self, SoldierKind.DYNAMIC, SoldierColor.BLUE, {col[i]+dx*(x-1), row[j]+dy*(y-1)}, SoldierTypes.ARCHER)
                    self.bg:addChild(s.bg)
                    self.blueSoldiers[s] = true
                end
            end
        end
    end

    --[[
    for i =1, 5, 1 do
        local s
        s = Soldier.new(self, SoldierKind.DYNAMIC, SoldierColor.RED, {20, (i-1)*40+20})
        self.bg:addChild(s.bg)
    end

    for i =1, 5, 1 do
        local s
        s = Soldier.new(self, SoldierKind.DYNAMIC, SoldierColor.BLUE, {780, (i-1)*40+20})
        self.bg:addChild(s.bg)
    end
    --]]

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
