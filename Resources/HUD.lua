HUD = class()
function HUD:ctor(game)
    self.game = game

    self.bg = CCLayer:create()

    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    self.up = CCSprite:create("images/uiup.png")
    self.up:setPosition(ccp(visibleSize.width-13, visibleSize.height-4))
    self.up:setAnchorPoint(ccp(1, 1))
    self.bg:addChild(self.up)

    for i =1, 12, 1 do
        local mid = CCSprite:create("images/uimid.png")
        mid:setAnchorPoint(ccp(1, 1))
        mid:setPosition(ccp(visibleSize.width-13, visibleSize.height-4-28-(i-1)*32))
        self.bg:addChild(mid)
    end

    local down = CCSprite:create("images/uilow.png")
    down:setAnchorPoint(ccp(1, 1))
    down:setPosition(ccp(visibleSize.width-13, visibleSize.height-4-28-(12)*32))
    self.bg:addChild(down)

    self.con = CCNode:create()
    self.bg:addChild(self.con)
    self.con:setPosition(ccp(visibleSize.width-13-180, visibleSize.height-4-28))

    self.left = CCSprite:create("images/soldier1.png")
    self.left:setPosition(ccp(77, -69))
    self.con:addChild(self.left)
    self.right = CCSprite:create("images/soldier2.png")
    self.right:setPosition(ccp(117, -69))
    self.con:addChild(self.right)

    self.arrow = CCSprite:create("images/arrow.png")
    self.arrow:setPosition(ccp(77, -37))
    self.con:addChild(self.arrow)

    self.word = CCLabelTTF:create("选择一个块",  "", 15)
    self.word:setPosition(ccp(95, -213))
    self.con:addChild(self.word)
    self.word:setColor(ccc3(237, 70, 48))

end
function HUD:updateBlock(tile)
    if self.word ~= nil then
        self.word:removeFromParentAndCleanup(true)
        self.word = nil
    end
    if self.menu ~= nil then
        self.menu:removeFromParentAndCleanup(true)
        self.menu = nil
    end
    if self.blockState ~= nil then
        self.blockState:removeFromParentAndCleanup(true)
        self.blockState = nil
    end
    if self.vw ~= nil then
        self.vw:removeFromParentAndCleanup(true)
        self.vw = nil
    end
    if self.attr ~= nil then
        self.attr:removeFromParentAndCleanup(true)
        self.attr = nil
    end

    if tile == nil then
        return
    end

    self.button = CCMenuItemImage:create("images/button.png", "images/buttonOn.png")
    self.button:setAnchorPoint(ccp(0.5, 0.5))
    self.button:setPosition(ccp(95, -213))
    local menu = CCMenu:create()
    menu:addChild(self.button)
    menu:setPosition(ccp(0, 0))
    self.con:addChild(menu)
    self.menu = menu
    local bw = CCLabelTTF:create("OK", "Minecraftia", 15)
    bw:setPosition(ccp(39, 40))
    bw:setAnchorPoint(ccp(0.5, 0.5))
    bw:setColor(ccc3(237, 70, 48))
    self.button:addChild(bw)

    local function onButton()
        print("onButton")
        local col = tile.x-1
        local row = tile.y-1
        local x, y = tile.x, tile.y
        local neibors
        if col % 2 == 0 then
            neibors = {{x, y-1}, {x+1, y-1}, {x+1, y}, {x, y+1}, {x-1, y}, {x-1, y-1}}
        else
            neibors = {{x, y-1}, {x+1, y}, {x+1, y+1}, {x, y+1}, {x-1, y+1}, {x-1, y}}
        end
        --循环调度
        if tile.color == Color.RED then
            for k, v in ipairs(neibors) do
                local n = self.game.tiles[xyToKey(v[1], v[2])]
                if n ~= nil and n.color == Color.RED then
                    local mv = math.floor(n.soldier/2)
                    n:updateSoldier(-mv)
                    tile.soldier  = tile.soldier+mv
                end
            end
            tile:updateSoldier(0)
        elseif tile.color == Color.BLUE then
            for k, v in ipairs(neibors) do
                local n = self.game.tiles[xyToKey(v[1], v[2])]
                if n ~= nil and n.color == Color.RED then
                    local left = tile.soldier
                    local mv = math.min(n.soldier, left)
                    n:updateSoldier(-mv)
                    tile.soldier = tile.soldier-mv
                end
            end
            tile:updateSoldier(0)
            if tile.soldier == 0 then
                tile:setEmpty()
            end
        --相当于移动
        else
            for k, v in ipairs(neibors) do
                local n = self.game.tiles[xyToKey(v[1], v[2])]
                if n ~= nil and n.color == Color.RED then
                    local mv = math.floor(n.soldier/2)
                    n:updateSoldier(-mv)
                    tile.soldier  = tile.soldier+mv
                end
            end
            tile:updateSoldier(0)
            tile:changeColor(Color.RED)
        end
        self.game:clearSelect()
    end
    self.button:registerScriptTapHandler(onButton)

    if tile.color == Color.RED then
        self.word = CCLabelTTF:create("将附近士兵集中到此", "", 15)
        self.word:setPosition(ccp(95, -170))
        self.con:addChild(self.word)
        self.word:setColor(ccc3(237, 70, 48))
    elseif tile.color == Color.BLUE then
        self.word = CCLabelTTF:create("附近士兵攻击这里", "", 15)
        self.word:setPosition(ccp(95, -170))
        self.con:addChild(self.word)
        self.word:setColor(ccc3(237, 70, 48))
    else
        self.word = CCLabelTTF:create("将附近士兵集中到此", "", 15)
        self.word:setPosition(ccp(95, -170))
        self.con:addChild(self.word)
        self.word:setColor(ccc3(237, 70, 48))
    end

    if tile.kind == 1 then
        self.blockState = CCSprite:create("images/grass.png")
        self.vw = CCLabelTTF:create("草地", "", 12)
        self.attr = CCLabelTTF:create("士兵+1", "", 12)
    elseif tile.kind == 2 then
        self.blockState = CCSprite:create("images/village.png")
        self.vw = CCLabelTTF:create("村庄", "", 12)
        self.attr = CCLabelTTF:create("士兵+2", "", 12)
    elseif tile.kind == 3 then
        self.blockState = CCSprite:create("images/castle2.png")
        self.vw = CCLabelTTF:create("城堡", "", 12)
        self.attr = CCLabelTTF:create("士兵+3", "", 12)
    elseif tile.kind == 4 then
        self.blockState = CCSprite:create("images/mountain.png")
        self.vw = CCLabelTTF:create("山地", "", 12)
        self.attr = CCLabelTTF:create("士兵-1", "", 12)
    elseif tile.kind == 5 then
        self.blockState = CCSprite:create("images/desert.png")
        self.vw = CCLabelTTF:create("土地", "", 12)
        self.attr = CCLabelTTF:create("士兵不变", "", 12)
    end
    self.blockState:setTextureRect(CCRectMake(0, 0, 66, 66))

    local sb = CCSprite:create("images/selectBox.png")
    sb:setPosition(ccp(33, 33))
    self.blockState:addChild(sb)
    self.blockState:setPosition(ccp(95, -295))
    self.con:addChild(self.blockState)
    self.vw:setPosition(ccp(95, -343))
    self.vw:setColor(ccc3(255, 255, 255))
    self.con:addChild(self.vw)
    self.attr:setColor(ccc3(100, 57, 40))
    self.attr:setPosition(ccp(95, -360))
    self.con:addChild(self.attr)

end
