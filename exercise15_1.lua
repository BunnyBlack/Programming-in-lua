---无循环表结构序列化
---@return void
---@param o table
---@param num number
function serialize(o, num)
    local t = type(o)
    num = num or 0
    if (t == "number" or t == "string" or t == "boolean" or t == "nil") then
        io.write(string.format("%q", o))
    elseif (t == "table") then
        io.write("{\n")
        local tabs = string.rep(" ", num * 4)
        for k, v in pairs(o) do
            io.write(tabs .. " ", k, " = ")
            serialize(v, num + 1)
            io.write(",\n")
        end
        io.write(tabs .. "}")
    else
        error("cannot serialize a " .. type(o))
    end
end