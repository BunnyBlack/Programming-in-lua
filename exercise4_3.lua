function insert(s1, pos, s2)
    if pos > #s1 + 1 then
        error("index out of range")     --超越边界
    end
    if pos == 1 then                    --头部插入
        return s2 .. s1
    elseif pos == #s1 + 1 then              --尾部插入
        return s1 .. s2
    else
        local tempLeft = string.sub(s1, 1, pos - 1)
        local tempRight = string.sub(s1, pos, -1)
        return tempLeft .. s2 .. tempRight
    end
end