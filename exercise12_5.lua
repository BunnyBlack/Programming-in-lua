---@return number days between two time
---@param d1 table os.date
---@param d2 table os.date
function DiffDay(d1, d2)
    local time = math.abs(os.difftime(os.time(d1), os.time(d2)))    --相差的天数应该以绝对值表示
    time = math.floor(time / 60 / 60/ 24)

    return time
end

local day1 = os.date("*t", os.time({year = 2020, month = 8, day = 26}))
local day2 = os.date("*t", os.time({year = 2020, month = 8, day = 27}))

print(DiffDay(day1, day2))