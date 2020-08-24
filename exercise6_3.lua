function PrintArr3(...)
    return table.unpack({...}, 1, select("#", ...) - 1)
end

print(PrintArr3(1,2,3,4,5,6))