N = 8
count = 0
index = {1, 1, 1, 1, 1, 1, 1, 1}	-- ȡһ���������n�е����ӷ�����һ��

function isplaceok(a, n, c)
	count = count + 1
	for i = 1, n -1 do
		if(a[i] == c) or
		(a[i] - i == c - n) or
		(a[i] + i == c + n)	then
			return false
		end
	end
	return true
end


function Queen(a)
	repeat
		repeat
			repeat
				repeat
					repeat
						repeat
							repeat
								repeat
									for d = 1, N do		--��һ��ѭ��������ֵ
										a[d] = index[d]
									end
									for n = 1, N do		--�����ж�ÿһ������λ���Ƿ����
										if not isplaceok(a, n, index[n]) then
											break
										end
									end
									index[8] = index[8] + 1
								until(index[8] > N)
							index[8] = 1
							index[7] = index[7] + 1
							until(index[7] > N)
						index[8] = 1
						index[7] = 1
						index[6] = index[6] + 1
						until(index[6] > N)
					index[8] = 1
					index[7] = 1
					index[6] = 1
					index[5] = index[5] + 1
					until(index[5] > N)
				index[8] = 1
				index[7] = 1
				index[6] = 1
				index[5] = 1
				index[4] = index[4] + 1
				until(index[4] > N)
			index[8] = 1
			index[7] = 1
			index[6] = 1
			index[5] = 1
			index[4] = 1
			index[3] = index[3] + 1
			until(index[3] > N)
		index[8] = 1
		index[7] = 1
		index[6] = 1
		index[5] = 1
		index[4] = 1
		index[3] = 1
		index[2] = index[2] + 1
		until(index[2] > N)
	index[8] = 1
	index[7] = 1
	index[6] = 1
	index[5] = 1
	index[4] = 1
	index[3] = 1
	index[2] = 1
	index[1] = index[1] + 1
	until(index[1] > N)
end

Queen({})
print(count)


