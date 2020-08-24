---@return table
---@param str string
---@param pattern string
function split(str, pattern)
    local t = {}
    local startPos = 1
    local endPos = 1

    while true do
        endPos = string.find(str, pattern, startPos, true)

        if (endPos == nil) then
            table.insert(str)
            break
        elseif (endPos == startPos) then
            table.insert(t, "")
        else
            table.insert(t, string.sub(str, startPos, endPos -1))
        end
        startPos = endPos + 1
    end
    table.insert(t, string.sub(str, startPos, #str))
    return t
end


