---@return string
---@param s string
function trim(s)
    s = string.gsub(s, "^%s*(.)%s*$","%1")
    return s
end

str = string.rep(" ", 1024 * 20)
str = " 1" .. str .."2 "

startTime = os.clock()
print(trim(str))
endTime = os.clock()

print(endTime - startTime)
