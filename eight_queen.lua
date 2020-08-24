--file = io.open("eight_queen_result.txt", "w")
--io.output(file)

N = 8	--���̴�С
count = 0

--��a[i] = j ������� i���к� j���к� ����i�е����ӱ����ڵ�j��
function isplaceok(a, n, c)			--aΪ���� nΪ��ǰҪ���õĻʺ���к� cΪ��Ҫ�ж�����
	count = count + 1
	for i = 1, n -1 do				--����ÿ���Ѿ����õĻʺ�
		if(a[i] == c) or			--��û�лʺ��ڴ�����
		(a[i] - i == c - n) or		--��Ԫ�ص����Խ�������û�������ʺ�
		(a[i] + i == c + n)	then	--��Ԫ�صĴζԽ�������û�������ʺ�
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
