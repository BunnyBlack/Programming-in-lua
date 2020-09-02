local authors = {}

---@param b table
function Entry2(b)
    authors[b.author] = true
end

dofile("data2.lua")

for name in pairs(authors) do
    print(name)
end