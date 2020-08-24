
function ConeVolume(height, deg)    --给出高和夹角的角度值
    local rad = math.rad(deg)
    local volume = 1/3 * math.pi * (math.tan(rad))^2 * height^3
    return volume
end

print(ConeVolume(3,45))