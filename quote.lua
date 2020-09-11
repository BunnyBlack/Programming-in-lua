function quote(s)
    local n = 1
    for w in string.gmatch(s, "]=*") do
        n = math.max(n, # w - 1)
    end


    --生成一个具有 'n' + 1 个等号的字符串
    local eq = string.rep("=", n + 1)

    return string.format(" [%s[\n%s]%s] ", eq, s, eq)
end
