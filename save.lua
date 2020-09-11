---假设 'o' 是一个数字或字符串
---@return string
---@param o number|string
function basicSerialize(o)
    return string.format("%q", o)
end

---@return string
---@param name string
---@param value any
---@param saved table
function save(name, value, saved)
    saved = saved or {}
    io.write(name, " = ")
    if(type(value) == "number" or type(value) == "string") then
        io.write(basicSerialize(value), "\n")
    elseif type(value) == "table" then
        if saved[value] then
            io.write(saved[value], "\n")
        else
            saved[value] = name
            io.write("{}\n")
            for k, v in pairs(value) do
                k = basicSerialize(k)
                local fname = string.format("%s[%s]", name, k)
                save(fname, v, saved)
            end
        end
    else
        error("cannot save a " .. type(value))
    end
end