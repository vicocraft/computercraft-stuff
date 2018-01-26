--Ask the user how far to go

print("How far?")

--Take input from the user
--and make dist equal to it

dist = read()

--Starting program...
--Detect if something is above 
--if so then dig it 
--(to handle gravel/sand)

function dSand()

while turtle.detectUp() do 
  turtle.digUp()
    sleep(0.50)
      end
end

dSand()      
turtle.digDown()

--Add +1 till dist is met
--As long as dist is not met do
--what follows

for i = 1, dist do

 --Call function to handle sand if it
 --falls on top of the turtle during operation
 
dSand()
      
turtle.dig()
   
--This handles sand/gravel infront
--of the turtle
  
  while not turtle.forward() do
    turtle.dig()
      end
      
dSand()

    turtle.digDown()
    turtle.down()
    turtle.digDown()
end