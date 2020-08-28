---@return number
---@param n number
function HammingWeight(n)
    n = math.tointeger(n)
    local count = 0
    while n > 0 do
        n = n & (n - 1)
        count = count + 1
    end
    return count
end

for i = 0, 5 do
    print(HammingWeight(i))
end
