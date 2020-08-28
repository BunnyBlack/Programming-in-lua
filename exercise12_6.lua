---@return number months between two dates
---@param d1 table os.date
---@param d2 table os.date
function DiffMonth(d1, d2)
    if d1.year > d2.year then
        return (d1.year - d2.year) * 12 + d1.month - d2.month
    else
        return (d2.year - d1.year) * 12 + d2.month - d1.month
    end
end


local date1 = os.date("*t", os.time({year = 2019, month = 8, day = 1}))
local date2 = os.date("*t", os.time({year = 2020, month = 7, day = 1}))

print(DiffMonth(date1, date2))