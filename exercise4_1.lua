data = [==[
<![CDATA[
    Hello World
]]>
]==]

function ExtractData(data)
    local result
    local startPos,endPos
    result = string.gsub(data, "<!%[CDATA%[", "")       --特殊字符用%转义
    result = string.gsub(result, "]]>", "")
    startPos = string.find(result, "%S")                --去除数据头部多余的空格
    endPos = -string.find(string.reverse(result), "%S") --去除数据尾部多余的空格
    result = string.sub(result, startPos, endPos)
    return result
end

print(ExtractData(data))