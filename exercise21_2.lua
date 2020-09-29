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

StackQueue = Stack:new()

function StackQueue.insertbottom(self, v)
    table.insert(self.stack, 1, v)
end

local sq = StackQueue:new({stack = {1, 2}})
print(sq:isempty())
sq:insertbottom(5)
print(sq:pop())
print(sq:pop())
print(sq:pop())
print(sq:isempty())