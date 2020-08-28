---@return boolean
---@param n number
function IsAPowerOfTwo(n)
    n = math.tointeger(n)
    if n <= 0 then
        return false
    end

    local temp = n - 1

    return (temp & n) == 0
end

print(IsAPowerOfTwo(-1))
print(IsAPowerOfTwo(0))
print(IsAPowerOfTwo(1))
print(IsAPowerOfTwo(2))
print(IsAPowerOfTwo(3))
print(IsAPowerOfTwo(4))
