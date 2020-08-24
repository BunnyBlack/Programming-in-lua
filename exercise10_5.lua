---@return string
---@param str string
function escape(str)
    local s = str

    s = string.gsub(s, "(.)", function(n)
        return string.format("\\x%02X", string.byte(n))
    end)

    return s
end

print(escape("\0\1hello\200"))