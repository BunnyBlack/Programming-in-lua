---@return number
---@param coefficient table
---@param x number
function Polyval(coefficient, x)
    if (type(coefficient) ~= "table") then
        error(string.format("bad argument #1 to 'Polyval' (table expected, got %s)", type(coefficient)))
    end
    if (type(x) ~= "number") then
        error(string.format("bad argument #2 to 'Polyval' (number expected, got %s)", type(x)))
    end
    local sum = 0
    for k, v in ipairs(coefficient) do
        sum = sum + v * x ^ (k - 1)         --系数的顺序是从小到大，并且从0开始算
    end
    return sum
end
    