-- 标准正态分布随机数发生器
function StandardNormalDistribution(floor, ceil)        --给出范围
    local prob = 0      --f(x)
    local mean = 0      --数学期望
    local standardDeviation = 1     --标准差
    local x = 0
    local y = 0
    math.randomseed(os.time())
    repeat
        y = math.random()
        x = floor + (ceil - floor) * math.random()
        prob = 1/((2 * math.pi * standardDeviation^2)^0.5) * math.exp(-( x - mean)^2 / (2 * standardDeviation^2))
    until prob < y
    return x
end

