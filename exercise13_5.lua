require("utils.ToBinaryString")

---@return boolean
---@param n number
function IsAPalindrome(n)
    local str
    local t = {}
    while n > 0 do
        table.insert(t, n & 1)
        n = n >> 1
    end

    str = table.concat(t)
    return str == string.reverse(str)
end

for i = 0, 8 do
    print(i, ToBinaryString(i), IsAPalindrome(i))
end
