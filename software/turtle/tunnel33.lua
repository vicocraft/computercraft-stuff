term.write("how Long should the tunnel be?")
local lol = read()
while turtle.getFuelLevel() < lol*7 do
 local q = turtle.getFuelLevel()
  if turtle.getFuelLevel() < lol*7 then
   term.write("Fuel Level is at "..q.." But needs to be "..lol*7)
   term.write("Please put Fuel in 1st slot")
   os.sleep(5)
   turtle.refuel()
  end
end
   term.write("Mining a "..lol.." block long tunnel")
  
   for a = 1,lol do
      turtle.dig()
      turtle.forward()
      turtle.digUp()
      turtle.digDown()
      turtle.turnRight()
      turtle.dig()
      turtle.forward()
      turtle.digUp()
      turtle.digDown()
      turtle.back()
      turtle.turnLeft()
      turtle.turnLeft()
      turtle.dig()
      turtle.forward()
      turtle.digUp()
      turtle.digDown()
      turtle.back()
      turtle.turnRight()
     end
    for b = 1,lol do
     turtle.back()
    end
   for c = 1,16 do
    turtle.select(c)
    turtle.dropDown(64)
   end
 turtle.select(1)