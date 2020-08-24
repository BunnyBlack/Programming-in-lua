function integral(f,delta)
    delta = delta or 1e-4
    return function(beginning, ending)
        local area = 0
        for i = beginning, ending, delta do
            area = area + math.abs(f(i) * delta)
        end
        return area
    end
end

c = integral(math.sin)
print("Integral from 0 to 2π is " .. c(0, 2 * math.pi))