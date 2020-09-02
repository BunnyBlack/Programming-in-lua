local authors = {}

---@param b table
function Entry(b)
    authors[b[1]] = true
end

dofile("data.lua")

for name in pairs(authors) do
    print(name)
end