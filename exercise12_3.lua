---@return number seconds from the begin of a day
---@param time number yyyy/mm/dd/hh/MM/SS
function CountSeconds(time)
    local year, month, day, hour, minute, second
    local t = {}
    local t2 = {}

    year = math.floor(time / 10000000000)
    month = math.floor(time / 100000000) % 100
    day = math.floor(time / 1000000) % 100
    hour = math.floor(time / 10000) % 100
    minute = math.floor(time / 100) % 100
    second = time % 100


    t = {year = year, month = month, day = day, hour = hour, min = minute, sec = second}
    t2 ={year = year, month = month, day = day, hour = 0, min = 0, sec = 0}
    return os.time(t) - os.time(t2)
end

local time = 20200825145832

print(CountSeconds(time))