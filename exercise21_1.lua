Stack = {
    stack = {},
    isempty = function(self)
        return #(self.stack) <= 0
    end,
    push = function(self, v)
        table.insert(self.stack, v)
    end,
    pop = function(self)
        if (self:isempty()) then
            error("stack is empty", 2)
        else
            return table.remove(self.stack)
        end
    end
}

function Stack:new(o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

local s = Stack:new({ stack = { 1, 2, 3 } })

print(s:isempty())
print(s:pop())
print(s:pop())
print(s:pop())
print(s:isempty())
s:push(5)
print(s:pop())