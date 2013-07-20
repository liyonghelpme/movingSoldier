require "SimplePath"

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
    self.player.bg:setPosition(ccp(10*16, 10*16))

    registerTouch(self)
end

function Map:onTouchBegan(x, y)
    return true
end

function Map:onTouchMoved(x, y)
end

function Map:onTouchEnded(x, y)
    local np = self.bg:convertToNodeSpace(ccp(x, y))
    self.player:goto(np)
end
