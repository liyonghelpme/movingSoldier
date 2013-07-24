Help = class()
function Help:ctor(game)
    self.game = game
    self.bg = CCLayer:create()
    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    self.up = CCSprite:create("images/uiup.png")
    self.up:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+78))
    self.up:setAnchorPoint(ccp(0.5, 0))
    self.bg:addChild(self.up)
    
    for i=1, 7, 1 do
        local mid = CCSprite:create("images/uimid.png")
        mid:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+78-i*32))
        self.bg:addChild(mid)
        mid:setAnchorPoint(ccp(0.5, 0))
    end

    local bottom = CCSprite:create("images/uilow.png")
    bottom:setPosition(ccp(visibleSize.width/2, visibleSize.height/2-82-32*2))
    self.bg:addChild(bottom)
    bottom:setAnchorPoint(ccp(0.5, 0))

    local word
    word = CCLabelTTF:create("每回合玩家可以选择一块地，接着点击右侧的OK按钮确认，将附近的士兵移动到这块地上，从而占领这块地，或者攻击对方的地，不同的地每回合生产的士兵数量不同, 敌方地为0则胜利", "", 15, CCSizeMake(149, 0), kCCTextAlignmentCenter, kCCVerticalTextAlignmentCenter)

    word:setColor(ccc3(0, 0, 0))
    word:setAnchorPoint(ccp(0.5, 0.5))

    word:setPosition(ccp(visibleSize.width/2, visibleSize.height/2))
    self.bg:addChild(word)
    
    local function onOK()
        self.bg:removeFromParentAndCleanup(true)
        self.game.inHelp = false
    end

    CCMenuItemFont:setFontName("Minecraftia")
    CCMenuItemFont:setFontSize(20)
    local mi = CCMenuItemFont:create("OK")

    mi:registerScriptTapHandler(onOK)
    mi:setPosition(ccp(visibleSize.width/2, visibleSize.height/2-40-32*2))
    
    local menu = CCMenu:create()
    menu:addChild(mi)
    menu:setPosition(ccp(0, 0))
    self.bg:addChild(menu)
end
