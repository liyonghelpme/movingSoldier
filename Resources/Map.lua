require "Monster"
require "SimplePath"
local simple = require "SimpleJson"

Map = class()
function Map:ctor()
    self.width = 100
    self.height = 100
    self.tileWidth = 16
    self.tileHeight = 16

    self.bg = CCLayer:create()
    self.ground = CCSpriteBatchNode:create("ground.png")
    self.bg:addChild(self.ground)
    for i=1, self.height, 1 do
        for j=1, self.width, 1 do
            local piece = CCSprite:create("ground.png")
            self.ground:addChild(piece)
            piece:setPosition(ccp((i-1)*self.tileWidth, (j-1)*self.tileHeight))
            piece:setAnchorPoint(ccp(0, 0))
            piece:setColor(ccc3(255, 0, 0))
        end
    end
    self.simplePath = SimplePath.new()

    self.player = Player.new(self)
    self.bg:addChild(self.player.bg)
    local sxy = gridToSoldierPos(10, 10)
    print(simple:encode(sxy))
    self.player.bg:setPosition(ccp(sxy[1], sxy[2]))

    registerTouch(self)

    --记录某些特殊网格状态存在怪兽之类
    self.grids = {}

    self.monster =  Monster.new(self)
    self.bg:addChild(self.monster.bg)
    local sxy = gridToSoldierPos(15, 15)
    self.monster.bg:setPosition(ccp(sxy[1], sxy[2]))
    self.monster:initPosition()


end

function Map:onTouchBegan(x, y)
    return true
end

function Map:onTouchMoved(x, y)
end

function Map:onTouchEnded(x, y)
    local np = self.bg:convertToNodeSpace(ccp(x, y))
    local grid = getGrid(np.x, np.y)
    local key = xyToKey(grid[1], grid[2])
    if self.grids[key] then
        self.player:attack(self.grids[key], grid[1], grid[2])
    else
        self.player:goto(np)
    end
end
