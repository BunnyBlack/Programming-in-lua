---@return boolean
---@param t table
function IsSequence(t)
    local i = 0
    local j = 0
    for _,_ in pairs(t) do
        i = i + 1
    end
    for _,_ in ipairs(t) do
        j = j + 1
    end
    return i == j
end

