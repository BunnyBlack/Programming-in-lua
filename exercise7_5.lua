---@param file string
---@param n number
function PrintSomeLines(file, n)
    local count = n
    local f = io.open(file, "r")
    local head = f : seek("set")
    local startPos = f : seek("end")
    local check = ""                    
    while true do
        check = f : read(1)
        if startPos == head then
            if count > 1 then
                print("文本中只有 " .. (n - count + 1) .. " 行数据")
                return
            end
            break
        end
        if check == "\n" then
            if count < 0 then
                startPos = startPos + 1
                break
            end
            count = count - 1
        end
        startPos = startPos - 1         --调用read()时会改变指针的位置，所以获取位置会出现一些奇怪的问题，这里我手动调整位置
        f : seek("set", startPos)
    end
    f:seek("set", startPos)
    print(f:read("a"))
end

PrintSomeLines("3.txt", 2)