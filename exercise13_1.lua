---@return number
---@param n number number
---@param m number mod
function UnsignedMod(n, m)
    return m<=n and n<0 and n-m or m<0 and n or ((n >> 1) % m * 2 + (n & 1) - m ) % m
end

local x = 0x7fffffffffffffff
local y = 0x8000000000000000
--local x = 6
--local y = 15

print(y % x)
print(UnsignedMod(y, x))
