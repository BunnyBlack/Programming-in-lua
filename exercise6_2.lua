function PrintArr2(...)
    return table.unpack({...}, 2, select("#", ...))
end

print(PrintArr2(1,2,3,4,5))
