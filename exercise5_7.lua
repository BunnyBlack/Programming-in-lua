---@return table
---@param a table
---@param pos integer 
---@param b table
function WholeTableMove(a, pos, b)
    table.move(a, 1, #a, pos, b)
    return b
end

a = {1, 2, 3}
b = {}

b = WholeTableMove(a, 1, b)

for k, v in pairs(b) do
    print(k, v)
end
