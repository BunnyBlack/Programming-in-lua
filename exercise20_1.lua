local Set = require "Set"

local a = Set.new({ 1, 2, 3 })
local b = Set.new({ 3, 4 })

local c = a - b

print(c)
print(#a)
print(#b)
print(#c)