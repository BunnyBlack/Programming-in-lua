--- 匹配出现 ]=* 的字符串序列 然后找到最大数量的 =
---生成比原来字符串最长等号大 1 的新等号序列
---@return string 被正确数量等号包裹的字符串序列
---@param s string 待处理的字符串
function quote(s)
    local n = 1
    for w in string.gmatch(s, "]=*") do
        n = math.max(n, # w - 1)
    end


    --生成一个具有 'n' + 1 个等号的字符串
    local eq = string.rep("=", n + 1)

    return string.format(" [%s[\n%s]%s] ", eq, s, eq)
end
