--- 用于把给定的整形数转换成二进制形式的字符串
---@return string
---@param n number
function ToBinaryString(n)
    local str
    local t = {}
    while n > 0 do
        table.insert(t, n & 1)
        n = n >> 1
    end

    return string.reverse(table.concat(t))
end

