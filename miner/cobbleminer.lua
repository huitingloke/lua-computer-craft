-- declare variable to count how many items in inventory, assumes chest is directly on right of turtle. turtle should not move. 
inv_count = 0

-- puts the blocks inside the chest on the right
function turtlePutStuff()
    turtle.turnRight()
    turtle.drop()
    turtle.turnLeft()
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

-- one-liner of above
inv_count = 0; function turtlePutStuff() turtle.turnRight() turtle.drop() turtle.turnLeft() end while true do turtle.dig() inv_count = inv_count + 1 if turtle.getFuelLevel() < 1 then break elseif turtle.getItemCount(1) > 63 then turtlePutStuff() inv_count = 0 end end

--while true do turtle.dig() if turtle.getFuelLevel() < 1 then break end end