function registerTouch(obj)
    local function onTouch(eventType, x, y)
        if eventType == "began" then   
            return obj:onTouchBegan(x, y)
        elseif eventType == "moved" then
            return obj:onTouchMoved(x, y)
        else
            return obj:onTouchEnded(x, y)
        end
    end
    obj.bg:registerScriptTouchHandler(onTouch)
    obj.bg:setTouchEnabled(true)
end
function registerUpdate(obj)
    local function update(diff)
        obj:update(diff)
    end
    CCDirector:sharedDirector():getScheduler():scheduleScriptFunc(update, 0, false)
end
function registerEnterOrExit(obj)
    local function onEnterOrExit(tag)
        if tag == 'enter' then
            obj:onEnter()
        elseif tag == 'exit' then
            obj:onExit()
        end
    end
    obj.bg:registerScriptHandler(onEnterOrExit)
end

function round(x)
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

function roundGridPos(x, y)
    return {round(x/16)*16, round(y/16)*16}
end

function getGrid(x, y)
    return {round(x/16), round(y/16)}
end
function getSign(v)
    if v > 0 then
        return 1
    elseif v < 0 then
        return -1
    else
        return 0
    end
end
function runAction(obj, act)
    if obj.curAction ~= act then
        if obj.curAction ~= nil then
            obj.bg:stopAction(obj.curAction)
        end

        obj.curAction = act
        if act ~= nil then
            obj.bg:runAction(act)
        end
    end
end

function gridToSoldierPos(x, y)
    return {x*16+8, y*16+8}
end
function soldierPosToGrid(x, y)
    return getGrid(x-8, y-8)
end


function xyToKey(x, y)
    return x*100000+y
end
function keyToXY(key)
    return math.floor(key/100000), math.floor(key%100000)
end
