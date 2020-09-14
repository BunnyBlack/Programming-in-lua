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
---@param num number
function save(name, value, saved, num)
    saved = saved or {}
    num = num or 0
    if (type(value) == "number" or type(value) == "string") then
        io.write(basicSerialize(value))
    elseif type(value) == "table" then
        if saved[value] then
            io.write(saved[value])
        else
            saved[value] = name
            io.write("{\n")
            local tabs = string.rep(" ", num * 4)
            for k, v in pairs(value) do
                if (type(k) == "string") then
                    io.write(tabs .. string.format(" [%s] = ", k))
                else
                    io.write(tabs .. " ", k, " = ")
                end
                save(k, v, saved, num + 1)
                io.write(",\n")
            end
            io.write(tabs .. "}")
        end
    else
        error("cannot save a " .. type(value))
    end
end

local a = { x = 1, y = 2, { 3, 4, 5 } }
a[2] = a
a.z = a[1]

save("a", a)