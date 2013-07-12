require "Arrow"
--附属到特定的soldier 身上
--作为组合元素
Archer = class()
function Archer:ctor(soldier)
    self.soldier = soldier
end
function Archer:initAnimation()
    local animation
    local cache = CCSpriteFrameCache:sharedSpriteFrameCache()
    
    cache:addSpriteFramesWithFile("anchorRun.plist")
    local frames = CCArray:create()
    for i = 0, 20, 1 do
        local frame = cache:spriteFrameByName("anchorRun"..i..".png")
        frames:addObject(frame)
    end

    animation = CCAnimation:createWithSpriteFrames(frames, 0.05)
    self.soldier.runAnimation = CCRepeatForever:create(CCAnimate:create(animation))

    cache:addSpriteFramesWithFile("anchorAttack.plist")
    local frames = CCArray:create()
    for i = 0, 15, 2 do
        local frame = cache:spriteFrameByName("anchorAttack"..i..".png")
        frames:addObject(frame)
    end

    animation = CCAnimation:createWithSpriteFrames(frames, 0.05)
    self.soldier.attackAnimation = CCRepeatForever:create(CCAnimate:create(animation))
    self.soldier.runAnimation:retain()
    self.soldier.attackAnimation:retain()
end
function Archer:doAttack(diff)
    local arrow = Arrow.new(self)
end

