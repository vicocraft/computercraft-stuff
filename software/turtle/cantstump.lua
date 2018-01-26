-- by Algathonix
baseBlocks = {1, 2, 3, 4, 5, 6, 7, 8};
stairs = { 9, 10, 11, 12 };
slabs = {13, 14, 15}; 
--not using fuel w/e
fuel = { 16 };
--[[
columns defines a basic schematic of the wall; in this three dimensional array, every row is defined by five blocks and a column is seventeen blocks.
block = 1, stair forward = 2, stair left = 3, stair right = 4, stair backward = 5,  slab = 6
--]]
column = {
    {
        {0, 0, 4, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0} 
    },
     {
        {6, 2, 1, 5, 6},  {0, 0, 1, 0, 0},  {0, 0, 4, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 3, 0, 0},  {0, 0, 1, 0, 0},  {0, 0, 1, 0, 0} ,  {0, 2, 1, 5, 0} ,  {1, 6, 1, 6, 1},  {1, 1, 1, 1, 1},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}
     },
 {
        {1, 1, 0, 1, 1},   {3, 1, 0, 1, 3},  {0, 1, 0, 1, 0},  {0, 1, 1, 1, 0},  {0, 1,1,1, 0},  {0, 1,1,1, 0},  {0, 1, 0, 1, 0},  {0, 1, 0, 1, 0},  {1, 1, 0, 1, 1},  {1, 1, 0, 1, 1},  {1, 1,1, 1, 1}, {0,0, 1,0,0}, {0,0, 1,0,0}, {0,0, 1,0,0}, {6,2, 1,5,6}, {3, 3, 3, 3, 3}, {0 ,0 ,0 ,0,0}
 },
 {
        {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {0, 0, 0, 0,0},  {1, 1,1, 1, 1}, {0, 0, 0, 0,0}, {0, 0, 0, 0,0}, {0, 0, 0, 0,0}, {0, 0, 0, 0,0}, {6,6,4,6,6}, {6,6,6,6,6}
 },
 {
         {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {1, 0, 0, 0, 1}, {0, 0, 0, 0,0},  {1, 1,1, 1, 1}, {0, 0, 0, 0,0}, {0, 0, 0, 0,0}, {0, 0, 0, 0,0}, {0, 0, 0, 0,0}, {6, 6, 3, 6, 6}, {6,6,6,6,6}
     },
 {
       {1, 1, 0, 1, 1},   {4, 1, 0, 1, 4},  {0, 1, 0, 1, 0},  {0, 1, 1, 1, 0},  {0, 1,1,1, 0},  {0, 1,1,1, 0},  {0, 1, 0, 1, 0},  {0, 1, 0, 1, 0},  {1, 1, 0, 1, 1},  {1, 1, 0, 1, 1},  {1, 1,1, 1, 1}, {0,0, 1,0,0}, {0,0, 1,0,0}, {0,0, 1,0,0}, {6,2, 1,5,6}, {4,4,4,4,4}, {0 ,0 ,0 ,0,0}
     },
 {
      {6, 2, 1, 5, 6},  {0, 0, 1, 0, 0},  {0, 0, 3, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 4, 0, 0},  {0, 0, 1, 0, 0},  {0, 0, 1, 0, 0} ,  {0, 2, 1,5, 0} ,  {1, 6, 1, 6, 1},  {1, 1, 1, 1, 1},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0}, {0, 0, 0, 0, 0}
     },
 {
     {0, 0, 3, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0},  {0, 0, 0, 0, 0} 
     }
}

--[[
Checks if the user has enough resources, if not, then it will try to relocate the items to the designated slots. 
--]]

function checkResource(itemSlotRange, targetSlot )
    if turtle.getItemCount(targetSlot) == 0 then
        for i, item in ipairs(itemSlotRange) do
            if turtle.getItemCount(item) ~= 0 then
                turtle.select(item);
                turtle.transferTo(targetSlot); 
                return;
            end
        end
        waitForResources();
    end
end


--[[
Makes sure the wall starts at ground level - might not be wanted by some users; if you are that user there are two options:
1. place a block at the level you wish to make the wall (every 5 blocks if you are going to loop it)
2. remove the ensureZeroAltitude call (not this method) around the end of this file
--]]
function ensureZeroAltitude()
    refuel();
while turtle.detectDown() == false do
    turtle.down();
    end
end

function refuel()
    if turtle.getFuelLevel() ~= "unlimited" and turtle.getFuelLevel() < 80 then
                turtle.select(fuel[1])
        if turtle.getItemCount(fuel[1]) == 0 then
            print("no fuel detected, TAKE THEIR OIL and supply the turtle with it. \n \n Press any key when you have supplied the turtle with additional pylons"); 
            read();
            refuel();
        end
		turtle.refuel(1)
	    end
end

function waitForResources()
    print("Insufficient resources to continue making America great!; Supply more minerals for the cause"); 
    print("Press 'Any Key' to continue"); 
    read(); 
    checkAllResources(); 
end

function checkAllResources()
checkResource(baseBlocks, 1); 
checkResource(stairs, 9); 
checkResource(slabs, 14); 
refuel();

end

--[[
Max time complexity algorithm; based on given width, height and length it will visit every possible location... but it works!
--]]
function walkPathTest(width, height, length)
for k = 1, width do 
    for j = 1, height do 
        turtle.up(); 
    for i = 1, length do
        checkAllResources()
        placeBlock(column[k][j][i]);
        if i < length then
        turtle.forward()
        end
    end
turnHundredeighty();
end
moveLeft();
for i =1, length do
    if i < length then
    turtle.forward();
        end
    end
for i = 1, height do
    turtle.down(); 
        end
turnHundredeighty()
    end
goToStart(length, width)
walkPathTest(8, 17, 5);
end

--[[
Ensures that when you have ended the loop you start at the beginning of the new wall
--]]
function goToStart(length, width)
    for i = 1, length do
    turtle.forward();
end
turtle.turnLeft();
for i = 1, width do
    turtle.forward();
    end
    turtle.turnRight();
end


function turnHundredeighty()
        for i = 1, 2 do
        turtle.turnLeft();
    end
end

function moveLeft()
    turtle.turnLeft();
    turtle.forward();
    turtle.turnRight();
end

function placeCommonBlock()
    turtle.select(1);
    turtle.placeDown();
end

function placeSlab()
    turtle.select(14);
    turtle.placeDown();
end


--[[
based on the given direction, it will perform a certain action. For instance at 2 it will place a block and at 3 it will place a stairs to the left. 
--]]
function placeBlock(direction)
if direction == 1 then
    placeCommonBlock();    
end

if direction == 2 then
    turtle.select(9);
    turtle.placeDown();
    end   
    if direction == 3 then
        turtle.select(9)
        turtle.turnLeft();
        turtle.placeDown();
        turtle.turnRight();
    end
    
        if direction == 4 then
        turtle.select(9)
        turtle.turnRight();
        turtle.placeDown();
        turtle.turnLeft();
    end
        if direction == 5 then
        turtle.select(9)
        turtle.turnLeft();
        turtle.turnLeft();
        turtle.placeDown();
        turtle.turnLeft();
        turtle.turnLeft();
    end
    if direction == 6 then
        placeSlab();
    end
end

walkPathTest(8, 17, 5);
ensureZeroAltitude();
walkingForever();



