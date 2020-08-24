---@return number
---@param time number
function TimeAfterAMonth(time)
    local year, month, day, hour, minute, second
    local t = {}

    year = math.floor(time / 10000000000)
    month = math.floor(time / 100000000) % 100
    day = math.floor(time / 1000000) % 100
    hour = math.floor(time / 10000) % 100
    minute = math.floor(time / 100) % 100
    second = time % 100

    month = month + 1   --此处不需要手动对时间进行修正，在 os.time 时已经将时间进行了修正

    t = {year = year, month = month, day = day, hour = hour, min = minute, sec = second}

    return os.time(t)
end


local time1 = 20200824171200 --yyyy mm dd hh MM SS

local time2 = TimeAfterAMonth(time1)

local date = os.date("*t", time2)

print(string.format("%04d%02d%02d%02d%02d%02d", date.year, date.month, date.day, date.hour, date.min, date.sec))
