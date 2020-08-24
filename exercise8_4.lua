---@return function
function room1()
    print("enter room1")
    io.flush()
    local move = io.read()

    if move == "south" then
        return room3()
    elseif move == "east" then
        return room2()
    else
        print("invalid move")
        io.flush()
        return room1()
    end
end

---@return function
function room2()
    print("enter room2")
    io.flush()
    local move = io.read()

    if move == "south" then
        return room4()
    elseif move == "west" then
        return room1()
    else
        print("invalid move")
        return room2()
    end
end

---@return function
function room3()
    print("enter room3")
    io.flush()
    local move = io.read()

    if move == "north" then
        return room1()
    elseif move == "east" then
        return room4()
    else
        print("invalid move")
        io.flush()
        return room3()
    end
end

function room4()
    print("Congratulations, you win!")
    io.flush()
end

room1()