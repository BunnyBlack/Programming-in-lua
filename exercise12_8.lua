function GetTimeZone()
    return os.date("%z")
end

print(GetTimeZone())