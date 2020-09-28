local Set = {}

local mt = {}
-- 使用指定的列表创建一个新的集合
function Set.new(l)
    local set = {}
    setmetatable(set, mt)
    for _,v in pairs(l) do
        set[v] = true
    end
    return set
end

function Set.union(a, b)
    local res = Set.new{}

    for k in pairs(a) do
        res[k] = true
    end
    for k in pairs(b) do
        res[k] = true
    end
end

mt.__add = Set.union

function Set.intersection(a, b)
    local res = Set.new{}
    for k in pairs(a) do
        res[k] = b[k]
    end
    return res
end

mt.__mul = Set.intersection

-- 将集合表示为字符串
function Set.tostring(set)
    local l = {}
    for e in pairs(set) do
        l[#l+1] = tostring(e)
    end
    return "{" .. table.concat(l, ", ") .. "}"
end

mt.__tostring = Set.tostring

function Set.SetDiff(a, b)
    local ret = Set.new{}
    for k,_ in pairs(a) do
        ret[k] = true
    end

    for k,_ in pairs(b) do
        ret[k] = nil
    end

    return ret
end

mt.__sub = Set.SetDiff

function Set.Length(t)
    local i = 0
    for _,_ in pairs(t) do
        i = i + 1
    end
    return i
end

mt.__len = Set.Length

return Set