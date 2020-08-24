function newpoly(coefficient)
    return function(x)
        local sum = 0
        for k, v in ipairs(coefficient) do
            sum = sum + v * x ^(k - 1)
        end
        return sum
    end
end

f = newpoly({3, 0, 1})  --表中靠前的数据阶数低
print(f(0))
print(f(5))
print(f(10))
