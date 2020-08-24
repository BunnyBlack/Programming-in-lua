function fact(x)
	if(type(x) == "number") then
		if x % 1 < 1e-6	then
			if x == 0 or x == 1 then
				return 1
			elseif x < 0 then
				print("expected a nonnegative number")
			else
				return x * fact(x-1)
			end
		else
			print("not a integer")
		end
	else
		print("not a number")
	end
end

print("Please enter a number")

a = io.read("*n")

print(fact(a))
