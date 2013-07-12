--距离差太小 则 normalize 之后 接近0
function normalize(v)
    local len = math.sqrt(v[1]*v[1]+v[2]*v[2])
    if len <= 0.0001 then
        return {v[1], v[2]}
    end
    return {v[1]/len, v[2]/len}
end
function magnitude(v)
    local len = math.sqrt(v[1]*v[1]+v[2]*v[2])
    return len
end
function truncate(v, maxv)
    local len = math.sqrt(v[1]*v[1]+v[2]*v[2])
    if len <= 0.001 then
        return {v[1], v[2]}
    end
    local nv = math.min(len, maxv)
    local cof = nv/len
    return {v[1]*cof, v[2]*cof}
end

function distance2(a, b)
    local dx, dy = a[1]-b[1], a[2]-b[2]
    return dx*dx+dy*dy
end
function scaleBy(v, s)
    return {v[1]*s, v[2]*s}
end
