-- strip mining -- create a line, every 3 blocks mine 5 into one lane on the right

-- variables
go_for = 5; --how long * 3 do you want turtle to do? 


print("Initializing :3");
while go_for do
    turtle.turnRight();
    for 1, 5 do
        turtle.dig();
        turtle.forward();
    end;
    turtle.turnLeft();
    turtle.turnLeft();
    for 1, 5 do
        turtle.forward();
    end;
    turtle.turnRight();
    go_for = go_for - 1;
    for var4 = 1, 2 do
        turtle.forward()
        turtle.dig()   
end;

go_for = 5; print("Initializing :3"); turtle.turnRight(); for var2 = 1, 5 do turtle.dig(); turtle.forward(); end; turtle.turnLeft(); turtle.turnLeft(); for var3 = 1, 5 do turtle.forward(); end; turtle.turnRight(); go_for = go_for - 1; turtle.forward(); turtle.forward();