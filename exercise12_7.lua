local date1 = os.date("*t", os.time({year = 2020, month = 2, day = 29}))
local date2 = os.date("*t", os.time({year = 2020, month = 2, day = 29}))

date1.month = date1.month + 1
date1 = os.date("*t", os.time(date1))
date1.day = date1.day + 1
date1 = os.date("*t", os.time(date1))

date2.day = date2.day + 1
date2 = os.date("*t", os.time(date1))
date2.month = date2.month + 1
date2 = os.date("*t", os.time(date2))

print(date1.month, date1.day)
print(date2.month, date2.day)
