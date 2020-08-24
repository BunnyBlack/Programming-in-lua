---打乱输入进来的数组
---@return table
---@param arr table
function Shuffle(arr)
    local t = {}
    math.randomseed(os.time())
    for i = #arr, 1, -1 do
        table.insert(t,table.remove(arr, math.random(i)))
    end
    return t
end

print(table.unpack(Shuffle({1,2,3,4,5})))