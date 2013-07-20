SimplePath = class()
function SimplePath:ctor()
end
function SimplePath:findPath(sx, sy, ex, ey)
    local path = {}
    local cx, cy = sx, sy
    while true do
        local dx, dy = ex-cx, ey-cy
        local nx, ny
        if dx == 0 and dy == 0 then
            break
        end
        if math.abs(dx) > math.abs(dy) then
            nx = cx+getSign(dx)
            ny = cy
        else
            nx = cx
            ny = cy+getSign(dy)
        end
        table.insert(path, {nx, ny})
        cx = nx
        cy = ny
    end
    return path
end
