---@param file1 string 
---@param file2 string  
function FileSort(file1, file2)
    if(file1 ~= nil) then       --如果第一个参数不为空
        if(file2 ~= nil) then       --如果第一第二个参数都不为空
            local f1 = io.open(file1, "r")      --以读方式打开文件1
            local f2 = io.open(file2, "r")      --先以写方式打开文件2 查看文件2是否存在
           
            if f2 ~= nil then
                io.write(file2 .. " exists, are you sure to overwrite it? y/n\n")
                if io.read() ~= 'y' then
                    f1:close()
                    f2:close()
                    return
                end
            end
            f2:close()
            f2 = io.open(file2, "w")

            while true do
                local str = f1 : read("l")      --读取一行数据作为字符串存储起来
                local t = {}
                local startPos = 1              --提取字串的参数初始化
                local endPos = 1

                if str == nil then              --读取结束时退出
                    break
                end

                str = string.gsub(str, "%s", ",")       --将空格替换为逗号，以便于进行字符串处理

                while true do
                    local endPos = string.find(str, ",", startPos)      --从起始位置开始找到下一个逗号的位置
                    if startPos > #str then                             --如果提取字串的初始位置已经超出字符串的长度，说明提取已经结束
                        break
                    end
                    if (endPos == nil) and (startPos <= #str) then      --如果已经读取到最后一个数字或只有一个数字时，后面已经没有逗号，因此直接把结束位置设置为字符串的末尾
                        endPos = #str + 1
                    end
                    local num = tonumber(string.sub(str, startPos, endPos - 1))     --将提取出来的数据转成数值型
                    table.insert(t, num)
                    startPos = endPos + 1       --起始位置移动到上一个逗号的后面
                end

                table.sort(t)

                for _, v in ipairs(t) do
                    f2:write(v, " ")
                end
                f2:write("\n")
            end
            f1:close()
            f2:close()      --将两个文件关闭
            io.write("Data from " .. file1 .. " to " .. file2 .. "\n")
        else
            local f1 = io.open(file1, "r")

            while true do
                local str = f1 : read("l")
                local t = {}
                local startPos = 1
                local endPos = 1
                if str == nil then
                    break
                end

                str = string.gsub(str, "%s", ",")

                while true do
                    local endPos = string.find(str, ",", startPos)
                    if startPos > #str then
                        break
                    end
                    if (endPos == nil) and (startPos <= #str) then
                        endPos = #str + 1
                    end
                    local num = tonumber(string.sub(str, startPos, endPos - 1))
                    table.insert(t, num)
                    startPos = endPos + 1
                end
    
                table.sort(t)

                for _,v in ipairs(t) do
                io.write(v, " ")
                end
                print("\n")
            end
            f1:close()
            io.write("Data from " .. file1 .. " to cmd\n")
        end
    else
        io.write("enter 'n' to exit!!!!!\n")
        while true do
            local str = io.read()
            local t = {}
            local startPos = 1
            local endPos = 1
            if str == 'n' then
                break
            end
        
            str = string.gsub(str, "%s", ",")
        
            while true do
                local endPos = string.find(str, ",", startPos)
                if startPos > #str then
                    break
                end
                if (endPos == nil) and (startPos <= #str) then
                    endPos = #str + 1
                end
                local num = tonumber(string.sub(str, startPos, endPos - 1))
                table.insert(t, num)
                startPos = endPos + 1
            end
            
            table.sort(t)
        
            for _,v in ipairs(t) do
                io.write(v, " ")
            end
            print("\n")
        end
        io.write("Data from cmd to cmd\n")
    end
end

FileSort("1.txt", "2.txt")
