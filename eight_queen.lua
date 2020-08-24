--file = io.open("eight_queen_result.txt", "w")
--io.output(file)

N = 8	--棋盘大小
count = 0

--在a[i] = j 的情况下 i是行号 j是列号 即第i行的棋子被放在第j列
function isplaceok(a, n, c)			--a为棋盘 n为当前要放置的皇后的行号 c为需要判定的列
	count = count + 1
	for i = 1, n -1 do				--对于每个已经放置的皇后
		if(a[i] == c) or			--有没有皇后在此列上
		(a[i] - i == c - n) or		--该元素的主对角线上有没有其他皇后
		(a[i] + i == c + n)	then	--该元素的次对角线上有没有其他皇后
			return false
		end
	end
	return true
end

function printsolution(a)
	for i = 1, N do
		for j = 1, N do
			io.write(a[i] == j and "X" or "-", " ")
		end
		io.write("\n")
	end
	io.write("\n")
end

function addqueen(a, n)
	if n > N then
		--printsolution(a)
		--os.exit()
	else
		for c = 1, N do
			if isplaceok(a, n, c) then
				a[n] = c
				addqueen(a, n + 1)
			end
		end
	end
end

addqueen({}, 1)
print(count)

--io.close(file)
