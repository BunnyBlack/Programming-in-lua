---@return string
---@param str string
---@param pattern table
function tansliterate(str, pattern)
    local s = ""
    for k,v in pairs(pattern) do        --先把 值为 false 的键的值替换为 ""
        if (v == false) then
            pattern[k] = ""
        end
    end
    s = string.gsub(str, ".", pattern)      --捕获任意字符，然后根据表进行替换
    return s
end

str = "aabbccdd"
t = {a = "1", b = "2", c = "3", d = false}

print(tansliterate(str,t))