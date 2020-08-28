--- 通过反复传入和传出外部变量 size 的值，最终确定什么时候会报错，当报错时就知道整型数的大小了
---@return number
---@param size number
function SizeOfInteger(size)
    local x = string.pack("i", 1 << size)
    print(size)
    return size + 1
end


local size = 0
while true do
    size = assert(SizeOfInteger(size))
end
