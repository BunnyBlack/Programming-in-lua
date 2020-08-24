---@return string
---@param t table
function MyConcat(t)
    local str = ""
    for _,v in ipairs(t) do
        str = str .. v
    end
    return str
end

---@return number
---@param f function
function MyTimer(f)
    local startTime = os.clock()
    f(t)
    local endTime = os.clock()
    return endTime- startTime
end

t = {}

for i =1,100000 do
    table.insert(t, i)
end

print(MyTimer(MyConcat))
print(MyTimer(table.concat))