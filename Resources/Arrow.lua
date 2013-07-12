Arrow = class()
function Arrow:ctor(archer)
    self.archer = archer
    self.maxVelocity = 3--*60
    self.maxForce = 10.4--*60
    self.mass = 20

    self.steering = {0, 0}
    self.velocity = {0, 0}
    self.target = {0, 0}
    

    local soldier = self.archer.soldier
    local world = soldier.world
    self.attackTarget = soldier.attacker
    --需要先注册 onEnterOrExit 
    --再添加节点到world上面
    self.bg = CCSprite:create("archerArrow.png")
    self:registerUpdate() 
    self.bg:setScale(0.5)
    
    --world.bg:addChild(self.bg)
    local px, py = soldier.bg:getPosition()
    local tx, ty = self.attackTarget.bg:getPosition()
    self.target = {tx, ty}
    local dx = tx-px
    local dy = ty-py

    local flipx = soldier.bg:isFlipX()


    local ix, iy
    if dx > 0 then
        ix = px+30
        self.velocity = {dx, dy}
    elseif dx < 0 then
        ix = px-30
        self.velocity = {dx, dy}
    else
        ix = px+30
        self.velocity = {dx, dy}
    end
    local tv = normalize(self.velocity)
    self.velocity = {tv[1]*self.maxVelocity, tv[2]*self.maxVelocity}

    self.bg:setPosition(ix, py)
    self.bg:setFlipX(flipx)

end
function Arrow:seek()
    local px, py = self.bg:getPosition()
    if not self.attackTarget.deleted then
        local tx, ty = self.attackTarget.bg:getPosition()
        self.target = {tx, ty}
    end

    local dir = {self.target[1]-px, self.target[2]-py}
    local dist = magnitude(dir)

    dir = normalize(dir)
    dir[1] = dir[1]*self.maxVelocity
    dir[2] = dir[2]*self.maxVelocity
    --跟帧率相关的 steering 如果排除时间因素的话
    --f*dt = dv
    --*60
    local steering = {(dir[1]-self.velocity[1]), (dir[2]-self.velocity[2])}
    return steering
end



function Arrow:registerUpdate()
    local function onEnterOrExit(tag)
        --print("Arrow onenter", tag)
        if tag == "enter" then
            local function updateState(diff)
                --print("update")
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
    if not self.attackTarget.deleted then
        local tx, ty = self.attackTarget.bg:getPosition()
        self.target = {tx, ty}
    end

    local px, py = self.bg:getPosition()
    local difx = self.target[1]-px
    local dify = self.target[2]-py
    --print("update", diff, tx, ty)
    if math.abs(difx) < 10 and math.abs(dify) < 10 then
        self.bg:removeFromParentAndCleanup(true)
        self.attackTarget.health = self.attackTarget.health - self.archer.soldier.attackValue
        return
    end

    local angel = math.atan2(dify, difx)
    self.bg:setRotation(-angel*180/math.pi)

    if difx > 0 then
        self.bg:setFlipX(false)
    elseif difx < 0 then
        self.bg:setFlipX(true)
    end


    local steering = self:seek()
    steering = truncate(steering, self.maxForce)
    steering = scaleBy(steering, 1/self.mass)
    
    local vx, vy = self.velocity[1], self.velocity[2]
    vx = vx+steering[1]--*diff
    vy = vy+steering[2]--*diff

    local px, py = self.bg:getPosition()
    self.velocity = truncate({vx, vy}, self.maxVelocity)
    vx = self.velocity[1]
    vy = self.velocity[2]
    --*diff
    self.bg:setPosition(px+vx, py+vy)
    

end
