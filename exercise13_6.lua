BitArray = {
    array = {},

    setBit = function(self, n, v)
        self.array[n] = v
    end,
    testBit = function(self, n)
        return self.array[n]
    end
}

function BitArray:new(n)
    local o = {array = {}}
    for i = 1, n do
        table.insert(o.array, false)
    end
    self.__index = self
    setmetatable(o, self)
    return o
end

local ba = BitArray:new(3)
print(ba.testBit(ba,1))
print(ba.testBit(ba,2))
print(ba.testBit(ba,3))
print(ba.testBit(ba,4))
ba.setBit(ba,1,true)
print(ba.testBit(ba,1))