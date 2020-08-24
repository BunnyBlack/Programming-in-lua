---@return number
---@param date number
function Weekday(date)
    local year, month, day
    local t = {}

    year = math.floor(date / 10000)
    month = math.floor(date / 100) % 100
    day = date % 100

    t = {year = year, month = month, day = day}


    return (os.date("*t", os.time(t))).wday
end

local date = 20200824   --yyyy mm dd

print(Weekday(date))