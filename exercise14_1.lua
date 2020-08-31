---@return table
---@param a table a = {{}, {}, {}}
---@param b table b = {{}, {}, {}}
function MatrixAdd(a, b)
    local res = {}

    for k, v in pairs(a) do     --找到不为空的表 k 就是矩阵行号 v 是矩阵的一列
        local tempTable = {}
        for i, j in pairs(v) do --在一列中寻找不为空的元素， 最终元素的位置是 a[k][i] = j
            tempTable[i] = j
        end
        res[k] = tempTable
    end

    for k, v in pairs(b) do
        if res[k] then          --首先应该查看对应的列存不存在，如果不存在就新建一个列，如果存在则查看对应的位置是否有值
            for i, j in pairs(v) do
                if res[k][i] then
                    res[k][i] = res[k][i] + j
                else
                    res[k][i] = j
                end
            end
        else
            local tempTable = {}
            for i, j in pairs(v) do
                tempTable[i] = j
            end
            res[k] = tempTable
        end
    end
    return res
end

local ta = {{1,2}, {3, 4}}
local tb = {{3,4}, {1, 2}}

local tc = {}
tc = MatrixAdd(ta, tb)

for _, v in pairs(tc) do
    for _, j in pairs(v) do
        io.write(j .. " ")
    end
    io.write("\n")
end