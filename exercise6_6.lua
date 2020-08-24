---可以链式打印
---@return function
---@param n number
function MyPrint(n)
    print(n)
    return MyPrint
end

MyPrint(1)(2)(3)(4)
