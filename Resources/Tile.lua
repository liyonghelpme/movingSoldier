Tile = class()
function Tile:ctor(kind, color, soldier, game, x, y)
    self.x = x
    self.y = y
    self.game = game
    self.kind = kind
    self.color = color
    self.soldier = soldier
    self.bg = CCLayer:create()
    if self.kind == 1 then
        self.pic = CCSprite:create("images/grass.png")
    elseif self.kind == 2 then
        self.pic = CCSprite:create("images/village.png")
    elseif self.kind == 3 then
        self.pic = CCSprite:create("images/castle2.png")
        self:updateFlag()
        --[[
        if self.color == Color.RED then
            self.flag = CCSprite:create("images/redFlag.png")
            self.flag:setPosition(ccp(7, 52))
            self.flag:setAnchorPoint(ccp(0, 0))
            self.pic:addChild(self.flag)
        elseif self.color == Color.BLUE then
            self.flag = CCSprite:create("images/blueFlag.png")
            self.flag:setPosition(ccp(7, 52))
            self.flag:setAnchorPoint(ccp(0, 0))
            self.pic:addChild(self.flag)
        end
        --]]
    elseif self.kind == 4 then
        self.pic = CCSprite:create("images/mountain.png")
    elseif self.kind == 5 then
        self.pic = CCSprite:create("images/desert.png")
    end
    self.pic:setAnchorPoint(ccp(0, 0))
    self.bg:addChild(self.pic)

    print(self.kind, self.bg)
    self:updateNum()
    
    registerTouch(self)
end
function Tile:clearSelect()
    if self.selectBox ~= nil then
        self.selectBox:removeFromParentAndCleanup(true)
        self.selectBox = nil
    end
end
function Tile:showSelectBox()
    if self.selectBox == nil then
        self.selectBox = CCSprite:create("images/selectBox.png")
        self.selectBox:setPosition(ccp(33, 44))
        self.pic:addChild(self.selectBox)
        --self.game:selectTile(self)
    end
end
function Tile:onTouchBegan(x, y)
    --没有在AI 动画播放状态
    if not self.game.inAI and not self.game.gameEnd then
        local np = self.pic:convertToNodeSpace(ccp(x, y))
        if np.x > 0 and np.x < 66 and np.y > 0 and np.y < 66 then
            if self.selectBox == nil then
                self.selectBox = CCSprite:create("images/selectBox.png")
                self.selectBox:setPosition(ccp(33, 44))
                self.pic:addChild(self.selectBox)
                self.game:selectTile(self)
            end
            return true
        end
    end
    return false
end
function Tile:onTouchMoved(x, y)
end
function Tile:onTouchEnded(x, y)
    
end
function Tile:updateSoldier(a)
    self.soldier = self.soldier+a
    self.soldier = math.min(math.max(self.soldier, 0), 99)
    if self.sn ~= nil then
        self.sn:setString(""..self.soldier)
    end
end
function Tile:updateFlag()
    if self.flag ~= nil then
        self.flag:removeFromParentAndCleanup(true)
        self.flag = nil
    end
    if self.kind == 3 then
        if self.color == Color.RED then
            self.flag = CCSprite:create("images/redFlag.png")
            self.flag:setPosition(ccp(7, 52))
            self.flag:setAnchorPoint(ccp(0, 0))
            self.pic:addChild(self.flag)
        elseif self.color == Color.BLUE then
            self.flag = CCSprite:create("images/blueFlag.png")
            self.flag:setPosition(ccp(7, 52))
            self.flag:setAnchorPoint(ccp(0, 0))
            self.pic:addChild(self.flag)
        end
    end
end
function Tile:updateNum()
    if self.num ~= nil then
        self.num:removeFromParentAndCleanup(true)
        self.num = nil
        self.sn:removeFromParentAndCleanup(true)
        self.sn = nil
        self.powerShow:removeFromParentAndCleanup(true)
        self.powerShow = nil
    end
    if self.color == Color.RED then
        self.num = CCSprite:create("images/num.png")
        print("number is ", self.num)
        self.num:setPosition(ccp(32, 53))
        self.num:setAnchorPoint(ccp(0, 0))
        self.pic:addChild(self.num)
        print(""..self.soldier, "Minecraftia", 12,  CCSizeMake(0, 0),  kCCTextAlignmentLeft, kCCVerticalTextAlignmentBottom)
        self.sn = CCLabelTTF:create(""..self.soldier, "Minecraftia", 12,  CCSizeMake(0, 0),  kCCTextAlignmentLeft, kCCVerticalTextAlignmentBottom)
        self.sn:setColor(ccc3(237, 70, 48))
        self.sn:setPosition(ccp(43, 55))
        self.sn:setAnchorPoint(ccp(0, 0))
        self.pic:addChild(self.sn)

        self.powerShow = CCSprite:create("images/redBox.png")
        self.powerShow:setPosition(ccp(0, 77))
        self.powerShow:setAnchorPoint(ccp(0, 1))
        self.pic:addChild(self.powerShow)

    elseif self.color == Color.BLUE then
        self.num = CCSprite:create("images/num.png")
        self.num:setPosition(ccp(32, 53))
        self.num:setAnchorPoint(ccp(0, 0))
        self.pic:addChild(self.num)

        self.sn = CCLabelTTF:create(""..self.soldier, "Minecraftia", 12, CCSizeMake(0, 0), kCCTextAlignmentLeft, kCCVerticalTextAlignmentBottom)
        self.sn:setColor(ccc3(102, 212, 225))
        self.sn:setPosition(ccp(43, 55))
        self.sn:setAnchorPoint(ccp(0, 0))
        self.pic:addChild(self.sn)

        self.powerShow = CCSprite:create("images/blueBox.png")
        self.powerShow:setPosition(ccp(0, 77))
        self.powerShow:setAnchorPoint(ccp(0, 1))
        self.pic:addChild(self.powerShow)
    end
end

function Tile:changeColor(c)
    self.color = c
    self:updateFlag()
    self:updateNum()
end

--被别人攻击下块
function Tile:setEmpty()
    if self.color == Color.RED then
        self.color = Color.BLUE
    elseif self.color == Color.BLUE then
        self.color = Color.RED
    end
    self:updateFlag()  
    self:updateNum()
end
