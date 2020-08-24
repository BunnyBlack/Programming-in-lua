---@param file string
function PrintLastLine(file)
    local f = io.open(file, "r")
    local head = f : seek("set")        --文件的起始位置
    local startPos = f : seek("end")    --文件的末尾位置，从此处开始往前寻找
    local check = ""                    --用于确认startPos处的字符是否为换行符
    while true do
        check = f : read(1)
        if startPos == head then
            break
        end
        if check == "\n" then
            startPos = startPos + 1     --检测到换行符需要把指针置到下一个字符
            break
        end
        startPos = startPos - 1         --调用read()时会改变指针的位置，所以获取位置会出现一些奇怪的问题，这里我手动调整位置
        f : seek("set", startPos)
    end
    f:seek("set", startPos)
    print(f:read("l"))
end