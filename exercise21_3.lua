local stack = {}

local Stack = {}

function Stack:isempty()
    return #stack[self] <= 0
end

function Stack:push(v)
    table.insert(stack[self], v)
end

function Stack:pop()
    return table.remove(stack[self])
end

function Stack:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    stack[o] = {}
    return o
end

s = Stack:new()
print(s:isempty())
s:push(1)
s:push(2)
print(s:isempty())
print(s:pop())
print(s:pop())
print(s:isempty())