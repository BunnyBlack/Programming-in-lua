local file = io.open("aseprite.txt", "r")

---@return string|nil
function allwords()
    local line = file:read()
    local pos = 1
    return function()
        while line do
            local w, e = string.match(line, "(%w+[,;.:]?)()", pos)
            if w then
                pos = e
                return w
            else
                line = file:read()
                pos = 1
            end
        end
        return nil
    end
end

---@return string
---@param t table
function prefix(t)
    return table.concat(t, " ")
end

local statetab = {}

---@return void
---@param prefix string
---@param value string
function insert(prefix, value)
    local list = statetab[prefix]
    if list == nil then
        statetab[prefix] = {value}
    else
        list[#list + 1] = value
    end
end


local MAXGEN = 200

local NOWORD = "\n"

--创建表

---@return table
---@param n number 输入前序序列的长度
function CreateList(n)
    local t = {}
    for i = 1, n do
        table.insert(t, NOWORD)
    end
    return t
end

local words = CreateList(3)

for nextword in allwords() do
    insert(prefix(words), nextword)
    for i = 1, #words - 1 do
        words[i] = words[i + 1]
    end
    words[#words] = nextword
end

insert(prefix(words), NOWORD)



--生成文本
local words = CreateList(3)
for i = 1, MAXGEN do
    local list = statetab[prefix(words)]
    local r = math.random(#list)
    local nextword = list[r]
    if nextword == NOWORD then
        return
    end
    io.write(nextword, " ")
    for j = 1, #words - 1 do
        words[j] = words[j + 1]
    end
    words[#words] = nextword
end

file:close()