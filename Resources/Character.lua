function clearCharacterAnimation(obj)
    obj.idle_down:release()
    obj.idle_down = nil

    obj.idle_right:release()
    obj.idle_right = nil

    obj.idle_up:release()
    obj.idle_up = nil

    obj.walk_down:release()
    obj.walk_down = nil

    obj.walk_right:release()
    obj.walk_right = nil

    obj.walk_up:release()
    obj.walk_up = nil
end
function showIdle(obj)
    if obj.oritation == Oritation.DOWN then
        runAction(obj, obj.idle_down)
        obj.bg:setFlipX(false)
    elseif obj.oritation == Oritation.UP then
        runAction(obj, obj.idle_up)
        obj.bg:setFlipX(false)
    elseif obj.oritation == Oritation.RIGHT  then
        runAction(obj, obj.idle_right)
        obj.bg:setFlipX(false)
    elseif obj.oritation == Oritation.LEFT then
        runAction(obj, obj.idle_right)
        obj.bg:setFlipX(true)
    end
end
