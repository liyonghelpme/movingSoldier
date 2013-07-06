-- cclog
cclog = function(...)
    print(string.format(...))
end

-- for CCLuaEngine traceback
function __G__TRACKBACK__(msg)
    cclog("----------------------------------------")
    cclog("LUA ERROR: " .. tostring(msg) .. "\n")
    cclog(debug.traceback())
    cclog("----------------------------------------")
end
local function round(x)
    local t
    if x >= 0.0 then
        t = math.ceil(x)
        if t-x > 0.50000000001 then
            t = t - 1
        end
    else
        t = math.ceil(-x)
        if t+x > 0.50000000001 then
            t = t - 1
        end
        t = -t
    end
    return t
end

local function main()
    -- avoid memory leak
    collectgarbage("setpause", 100)
    collectgarbage("setstepmul", 5000)

    require "allProblem"

    ---------------

    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    local origin = CCDirector:sharedDirector():getVisibleOrigin()
    local vs = visibleSize

    local chapters = {}
    local maxPageNum = #content+1

    local adHeight = 32

    local function createChapter(id)
        local layer = CCLayer:create()
        layer.id = id
        layer:setPosition(ccp(visibleSize.width*id, 0))

        local back = CCSprite:create("paper.png")
        back:setPosition(ccp(vs.width/2, vs.height/2))
        local oldSize = back:getContentSize()
        back:setScaleX(vs.width/oldSize.width)
        back:setScaleY(vs.height/oldSize.height)

        local texture = back:getTexture()
        local texParam = ccTexParams()
        texParam.minFilter = GL_LINEAR
        texParam.magFilter = GL_LINEAR
        texParam.wrapS = GL_REPEAT
        texParam.wrapT = GL_REPEAT
        texture:setTexParameters(texParam)
        layer:addChild(back)
        local label = CCLabelTTF:create(string.format("%d/%d", id+1, maxPageNum), "", 20)
        label:setAnchorPoint(ccp(0.5, 0))
        label:setPosition(ccp(vs.width/2, 10))
        layer:addChild(label)
        label:setColor(ccc3(0, 0, 0))
        
        if id >= 0 and id < maxPageNum then
            local content = CCLabelTTF:create(content[id], "", 20, CCSizeMake(vs.width-20, 0), kCCTextAlignmentLeft, kCCVerticalTextAlignmentTop) 
            content:setPosition(ccp(10, vs.height-adHeight))
            content:setAnchorPoint(ccp(0, 1))
            content:setColor(ccc3(0, 0, 0))
            layer:addChild(content)
            layer.content = content
        end
        return layer
    end
    --local l0 = createChapter(0)
    --local l1 = createChapter(1)
    --chapters[0] = l0
    --chapters[1] = l1



    local function createMove()

        local maxX = maxPageNum*vs.width
        --local maxY = 0
        
        local layer = CCLayer:create()
        
        local touchBeginPoint
        local sx, sy
        local tx, ty = layer:getPosition()

        local contentLayer = CCLayer:create()
        layer:addChild(contentLayer)

        local contentPx, contentPy

        local function updateContent()
            local oldCurPage = layer.curPage
            local cx, cy = layer:getPosition()
            local curPage = -round(cx/vs.width)
            --新页面 和旧页面相同 不用更新
            if oldCurPage == curPage then
                print("same page", oldCurPage, curPage)
                return
            end

            local oldLastPage
            if oldCurPage ~= nil then
                oldLastPage = oldCurPage-1
            end
            local oldNextPage
            if oldCurPage ~= nil then
                oldNextPage = oldCurPage+1
            end

            local lastPage = curPage-1
            local nextPage = curPage+1
            
            local p0
            if oldCurPage == lastPage and layer.page ~= nil then
                p0 = layer.page
            else
                p0 = createChapter(lastPage)
            end
            --向左或者向右 使用旧页面
            local p1
            if oldNextPage == curPage and layer.nextPage ~= nil then
                p1 = layer.nextPage
            elseif oldLastPage == curPage and layer.lastPage ~= nil then
                p1 = layer.lastPage
            else
                p1 = createChapter(curPage)
            end

            local p2
            if oldCurPage == nextPage and layer.page ~= nil then
                p2 = layer.page
            else
                p2 = createChapter(nextPage)
            end
            print("genPage", p0, p1, p2)

            
            layer.lastPage = p0
            layer.nextPage = p2
            layer.page = p1
            layer.curPage = curPage

            local content = layer.page.content
            --显示页面相同保持ty的值不变
            --touchEnded 之后
            --还是原来的主页面
            --切换成新的主页面 ty 保持还是改变
            if content ~= nil then
                contentPx, contentPy = content:getPosition()
                ty = contentPy
                print("init contentTy", ty)
            end
            p0:retain()
            p1:retain()
            p2:retain()

            contentLayer:removeFromParentAndCleanup(true)
            contentLayer = CCLayer:create()
            contentLayer:addChild(p0)
            contentLayer:addChild(p1)
            contentLayer:addChild(p2)
            
            p0:release()
            p1:release()
            p2:release()

            layer:addChild(contentLayer)

        end
        updateContent()

        local inMove = false
        local function onTouchBegan(x, y)
            touchBeginPoint = {x=x, y=y}
            sx, sy = layer:getPosition()
            tx, ty = layer:getPosition()
            local content = layer.page.content 
            if content ~= nil then
                contentPx, contentPy = content:getPosition()
                ty = contentPy
                print("touchBegin contentTy", contentPy, ty)
            end
            return true
        end
        local function onTouchMoved(x, y)
            inMove = true
            tx = x-touchBeginPoint.x+sx

            tx = math.min(math.max(tx, -(maxX-vs.width)), 0)
            local content = layer.page.content 
            local maxY = 0
            if content ~= nil then
                local contentHeight = content:getContentSize()
                print("contentHeight is", contentHeight.height)
                maxY = math.max(contentHeight.height+10, vs.height-adHeight)
                ty = y-touchBeginPoint.y+contentPy 
                ty = math.min(math.max(ty, vs.height-adHeight), maxY)
                print("touchMoved ty ", ty, maxY, contentPy)
            end
        end
        local function onTouchEnded(x, y)
            local ntx = round(tx/vs.width)
            ntx = ntx*vs.width
            --x 方向对齐到某个页面
            tx = math.min(math.max(ntx, -(maxX-vs.width)), 0)

            --local content = layer.page.content 
            --[[
            if content ~= nil then
                local maxY = 0
                local contentHeight = content:getContentSize()
                maxY = math.max(contentHeight.height+10, vs.height-10)
                ty = y-touchBeginPoint.y+contentPy 
                ty = math.min(math.max(ty, vs.height-10), maxY)
            end
            --]]
            --等待移动结束之后再updateContent
            --updateContent()
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

        layer:registerScriptTouchHandler(onTouch)
        layer:setTouchEnabled(true)

        local function tick(diff)
            local cx, cy = layer:getPosition()
            local smooth = diff*5
            smooth = math.min(smooth, 1)
            local px = cx*(1-smooth)+smooth*tx
            --local py = cy*(1-smooth)+smooth*ty
            layer:setPosition(ccp(px, cy))

            local content = layer.page.content 
            if content ~= nil then
                local conx, cony = content:getPosition()
                local py = cony*(1-smooth)+smooth*ty
                content:setPosition(ccp(conx, py))
                --print("update content y", cony, py, ty)
            end
            if inMove then
                if math.abs(tx - cx) <= 10 then
                    inMove = false
                    updateContent()
                end
            end
        end

        CCDirector:sharedDirector():getScheduler():scheduleScriptFunc(tick, 0, false)
        return layer
    end

    local layer = createMove()
    --layer:addChild(l0)
    --layer:addChild(l1)

    -- run
    local sceneGame = CCScene:create()
    sceneGame:addChild(layer)

    CCDirector:sharedDirector():runWithScene(sceneGame)
end

xpcall(main, __G__TRACKBACK__)
