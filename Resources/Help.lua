Help = class()
function Help:ctor(game)
    self.game = game
    self.bg = CCLayer:create()
    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    self.up = CCSprite:create("images/uiup.png")
    
    local conNum = 10
    local totalHeight  = (32*conNum+24+28)/2
    local initHeight = (32*conNum+24+28)/2-28
    local widthSca =  400/180

    self.up:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+initHeight))
    self.up:setAnchorPoint(ccp(0.5, 0))
    self.bg:addChild(self.up)
    self.up:setScaleX(widthSca)

    for i=1, conNum, 1 do
        local mid = CCSprite:create("images/uimid.png")
        mid:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+initHeight-i*32))
        self.bg:addChild(mid)
        mid:setAnchorPoint(ccp(0.5, 0))
        mid:setScaleX(widthSca)
    end

    local bottom = CCSprite:create("images/uilow.png")
    bottom:setPosition(ccp(visibleSize.width/2, visibleSize.height/2-totalHeight))
    self.bg:addChild(bottom)
    bottom:setAnchorPoint(ccp(0.5, 0))
    bottom:setScaleX(widthSca)

    local title = CCLabelTTF:create("帮助", "", 30, CCSizeMake(0, 0), kCCTextAlignmentCenter, kCCVerticalTextAlignmentCenter)
    title:setColor(ccc3(0, 0, 0))
    title:setAnchorPoint(ccp(0.5, 0.5))
    title:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+totalHeight-40))
    self.bg:addChild(title)

    local word
    word = CCLabelTTF:create("0.你是红方\n1.每回合玩家可以选择一块地\n2.接着点击右侧的\"确定\"按钮确认，将附近的士兵移动到这块地上\n3.从而占领这块地，或者攻击对方的地\n4.不同的地每回合生产的士兵数量不同\n5.敌方地为0则胜利", "", 20, CCSizeMake(300, 0), kCCTextAlignmentLeft, kCCVerticalTextAlignmentCenter)

    word:setColor(ccc3(0, 0, 0))
    word:setAnchorPoint(ccp(0.5, 0.5))

    word:setPosition(ccp(visibleSize.width/2, visibleSize.height/2))
    self.bg:addChild(word)
    
    local function onOK()
        self.bg:removeFromParentAndCleanup(true)
        self.game.inHelp = false
    end

    CCMenuItemFont:setFontName("Minecraftia")
    CCMenuItemFont:setFontSize(30)
    local mi = CCMenuItemFont:create("我明白了")

    mi:registerScriptTapHandler(onOK)
    mi:setPosition(ccp(visibleSize.width/2, visibleSize.height/2-totalHeight+40))
    
    local menu = CCMenu:create()
    menu:addChild(mi)
    menu:setPosition(ccp(0, 0))
    self.bg:addChild(menu)
end
