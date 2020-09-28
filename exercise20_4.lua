---@return table
---@param file string
function fileAsArray(file)
    local proxy = {}

    local mt = {
        __index = function(_, k)
            local f = io.open(file,"r+")
            f:seek("set", k)
            local c = f:read(1)
            f:close()
            return c
        end,
        __newindex = function(_, k, v)
            local f = io.open(file, "r+")
            f:seek("set", k)
            f:write(v)
            f:close()
        end,
        __tostring = function()
            local f = io.open(file,"r+")
            f:seek("set")
            local content = f:read("*a")
            return content
        end
    }

    setmetatable(proxy, mt)
    return proxy
end

local t = fileAsArray("ex20_4.txt")
print(t)
print(t[0])
t[3] = " "
print(t)