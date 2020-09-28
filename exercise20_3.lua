function readOnly(t)
    local proxy = {}
    local mt = {
        __index = function(_,k) return t[k] end,
        __newindex = function (t, k ,v)
            error("attempt to update a read-only table", 2)
        end
    }
    setmetatable(proxy, mt)
    return proxy
end


local t = readOnly({1,2,3})
print(t[1])
print(t[2])
print(t[3])
t[1] = 5