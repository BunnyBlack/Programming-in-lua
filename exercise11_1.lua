local counter = {}

local inputFile = io.open("aseprite.txt", "r")
local exceptionFile = io.open("exceptions.txt","r")

for line in inputFile:lines() do
    for word in string.gmatch(line, "%w+") do
        if #word >= 4 then
            counter[word] = (counter[word] or 0) + 1
        end
    end
end

for line in exceptionFile:lines() do
    for word in string.gmatch(line, "%w+") do
        counter[word] = nil
    end
end

for k, v in pairs(counter) do
    print(k, v)
end

inputFile:close()
exceptionFile:close()