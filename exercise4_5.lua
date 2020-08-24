function remove(str, startPos, length)
    if (startPos > #str) or (startPos + length -1 > #str) then      --起始位置溢出边界或者起始位置加长度超出边界
        error("index out of range")
    end
    if startPos == 1 then                                           --头部删除
        return string.sub(str, startPos + length, -1)
    elseif startPos + length - 1 == #str then                           --尾部删除         
        return string.sub(str, 1, startPos - 1)
    else
        local tempLeft = string.sub(str, 1, startPos - 1)
        local tempRight = string.sub(str, startPos + length, -1)
        return tempLeft .. tempRight
    end
end