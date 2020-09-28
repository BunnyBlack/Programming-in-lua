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
        end,
        __len = function()
            local f = io.open(file, "r")
            local length = f:seek("end")
            return length
        end
    }

    setmetatable(proxy, mt)
    return proxy
end

local t = fileAsArray("ex20_4.txt")
print(#t)
