---@return number
---@param coefficient table
---@param x number
function Polyval(coefficient, x)
    ---[==[    
    if (type(coefficient) ~= "table") then
        error(string.format("bad argument #1 to 'Polyval' (table expected, got %s)", type(coefficient)))
    end
    if (type(x) ~= "number") then
        error(string.format("bad argument #2 to 'Polyval' (number expected, got %s)", type(x)))
    end
    --]==]
    local sum = 0
    for i = #coefficient, 1, -1 do
        sum = sum * x;
        sum = sum + coefficient[i]
    end
    return sum
end
