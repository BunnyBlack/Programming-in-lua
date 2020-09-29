DoubleEndedQueue = {
    list = {first = 0, last = 0},
    pushFirst = function(self, v)
        if(self.list.first == 0) then
            self.list.first = 1
            self.list[self.list.first] = v
        else
            self.list.first = self.list.first + 1
            self.list[self.list.first] = v
        end
    end,
    pushLast = function(self, v)
        if(self.list.last == 0) then
            self.list.last = -1
            self.list[self.list.last] = v
        else
            self.list.last = self.list.last - 1
            self.list[self.list.last] = v
        end
    end,
    popFirst = function(self)
        if(self.list.first == 0) then
            error("stack overflow",2)
        else
            local temp = self.list[self.list.first]
            self.list[self.list.first] = nil
            self.list.first = self.list.first - 1
            return temp
        end
    end,
    popLast = function(self)
        if(self.list.last == 0) then
            error("stack overflow", 2)
        else
            local temp = self.list[self.list.last]
            self.list[self.list.last] = nil
            self.list.last = self.list.last + 1
            return temp
        end
    end
}

function DoubleEndedQueue:new(o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

local deq = DoubleEndedQueue:new()
deq:pushFirst(1)
deq:pushFirst(2)
deq:pushLast(3)
deq:pushLast(4)
print(deq:popFirst())
print(deq:popFirst())
print(deq:popLast())
print(deq:popLast())