GameOver = class()
function GameOver:ctor(win)
    self.bg = CCLayer:create()
    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    self.up = CCSprite:create("images/uiup.png")
    self.up:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+78))
    self.up:setAnchorPoint(ccp(0.5, 0))
    self.bg:addChild(self.up)
    
    for i=1, 5, 1 do
        local mid = CCSprite:create("images/uimid.png")
        mid:setPosition(ccp(visibleSize.width/2, visibleSize.height/2+78-i*32))
        self.bg:addChild(mid)
        mid:setAnchorPoint(ccp(0.5, 0))
    end

    local bottom = CCSprite:create("images/uilow.png")
    bottom:setPosition(ccp(visibleSize.width/2, visibleSize.height/2-82))
    self.bg:addChild(bottom)
    bottom:setAnchorPoint(ccp(0.5, 0))

    local word
    if win then
        word = CCLabelTTF:create("胜利!", "", 18)
        word:setColor(ccc3(237, 70, 48))
        word:setAnchorPoint(ccp(0.5, 0.5))
    else
        word = CCLabelTTF:create("失败", "", 18)
        word:setColor(ccc3(102, 212, 225))
    end
    word:setPosition(ccp(visibleSize.width/2, visibleSize.height/2))
    self.bg:addChild(word)
    
    local function onOK()
        local newScene = CCScene:create()
        local game = Game.new()
        newScene:addChild(game.bg)
        CCDirector:sharedDirector():replaceScene(newScene)
    end

    CCMenuItemFont:setFontName("Minecraftia")
    CCMenuItemFont:setFontSize(20)
    local mi = CCMenuItemFont:create("OK")

    mi:registerScriptTapHandler(onOK)
    mi:setPosition(ccp(visibleSize.width/2, visibleSize.height/2-40))
    
    local menu = CCMenu:create()
    menu:addChild(mi)
    menu:setPosition(ccp(0, 0))
    self.bg:addChild(menu)
end
