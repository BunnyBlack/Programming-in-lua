function ispali(str)
    local s = string.gsub(str, "%s", "")
    s = string.gsub(s, "%p", "")
    return s == string.reverse(s)
end