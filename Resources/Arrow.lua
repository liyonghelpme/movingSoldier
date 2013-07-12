Arrow = class()
function Arrow:ctor(archer)
    self.archer = archer

    local soldier = self.archer.soldier
    local world = soldier.world
    self.attackTarget = soldier.attacker

    self.bg = CCSprite:create("archerArrow.png")
    world:addChild(self.bg)
    local flipx = soldier.bg:isFlipX()

    local px, py = soldier.bg:getPosition()
    local ix, iy
    if flipX then
        ix = px-30
    else
        ix = px+30
    end

    self.bg:setPosition(ix, py)
    self:registerUpdate() 
end

function Arrow:registerUpdate()
    local function onEnterOrExit(tag)
        if tag == "enter" then
            local function updateState(diff)
                self:update(diff)
            end
            self.updateEntry = CCDirector:sharedDirector():getScheduler():scheduleScriptFunc(updateState, 0, false)
        elseif tag == "exit" then
            CCDirector:sharedDirector():getScheduler():unscheduleScriptEntry(self.updateEntry)
        end
    end
    self.bg:registerScriptHandler(onEnterOrExit)
end
function Arrow:update(diff)
    local tx, ty = self.attackTarget.bg:getPosition()
    local px, py = self.bg:getPosition()
    local difx = tx-px
    if difx > 0 then
        self.bg:setFlipX(false)
    elseif difx < 0 then
        self.bg:setFlipX(true)
    end
end
