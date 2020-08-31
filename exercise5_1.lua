sunday = "monday"
monday = "sunday"

t = {sunday = "monday", [sunday] = monday}

for k, v in pairs(t) do
	print(k, v)
end

