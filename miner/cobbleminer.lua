-- declare variable to count how many items in inventory, assumes chest is directly on right of turtle. turtle should not move. 
inv_count = 0

-- puts the blocks inside the chest on the right
    turtle.turnRight()
    turtle.drop()
    turtle.turnLeft()
end

function turtlePutStuffLeft()
    turtle.turnLeft()
    turtle.drop()
    turtle.turnRight()
end

-- dig until no fuel. if there is a stack of items, put it in the chest. resume digging.
while true do
    turtle.dig()
    inv_count = inv_count + 1
    if turtle.getFuelLevel() < 1 then
        break
    elseif turtle.getItemCount(1) > 63 then
        turtlePutStuff()
        inv_count = 0
    end
end

-- one-liner of above THIS IS FOR FACING THE RIGHT
inv_count = 0; function turtlePutStuffRight() turtle.turnRight() turtle.drop() turtle.turnLeft() end while true do turtle.dig() inv_count = inv_count + 1 if turtle.getFuelLevel() < 1 then break elseif turtle.getItemCount(1) > 63 then turtlePutStuffRight() inv_count = 0 end end

-- THIS IS FOR FACING THE LEFT
inv_count = 0; function turtlePutStuffLeft() turtle.turnLeft() turtle.drop() turtle.turnRight() end while true do turtle.dig() inv_count = inv_count + 1 if turtle.getFuelLevel() < 1 then break elseif turtle.getItemCount(1) > 63 then turtlePutStuffLeft() inv_count = 0 end end

--while true do turtle.dig() if turtle.getFuelLevel() < 1 then break end end