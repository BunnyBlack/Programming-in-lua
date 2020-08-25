---@return number What day is the first friday of the year
---@param year number
function FirstFriday(year)
    local t = {}
    local date
    local ret
    t = {year = year, month = 1, day = 1}

    date = os.date("*t", os.time(t))
    ret = 6 - date.wday + 1
    if ret <= 0 then
        ret = ret + 7
    end

    return ret
end

local year = 2020

print(FirstFriday(year))
