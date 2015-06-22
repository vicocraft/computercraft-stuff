function forward(forw, threeTall)
  if forw == nil then
    forw = 1
  end
  for o = 1,forw do
    while not turtle.forward() do
      turtle.dig()
      turtle.attack()
    end
    if inMainTunnel == true then
      totforw = totforw+1
    end
    print(totforw)
    if threeTall == true then
      turtle.digUp() 
      turtle.digDown()
    elseif threeTall == false and bridge == "y" then
      if not turtle.detectDown() then
        turtle.select(14)
        turtle.placeDown()
        turtle.select(1)
      end
    end
  end
end


function torch()
    if torches ~= "n" then
    turtle.select(15)
    turtle.dig()
    turtle.place()
    turtle.select(1)
  end
end

function dropoff(side)
  for p = 1,14 do
    turtle.select(p)
    if side == "down" then  
      turtle.dropDown()
    elseif side == "front" then
      turtle.drop()
    end
  end
  turtle.select(1)
end

function placeChest()
  if chest == "chests" then
    turtle.down()
    turtle.digDown()
    turtle.select(16)
    turtle.placeDown()
    dropoff("down")
    turtle.select(1)
    turtle.up()
  elseif chest == "enderchest" then
    turtle.down()
    turtle.digDown()
    turtle.select(16)
    turtle.placeDown()
    dropoff("down")
    turtle.digDown()
    turtle.select(1)
    turtle.up()
  elseif chest == "d" then
    turtle.turnLeft()
    turtle.turnLeft()
    inMainTunnel = false
    forward(totforw)
    turtle.turnRight()
    dropoff("front")
    turtle.turnRight()
    forward(totforw)
  end
end 

function refuel()
  if turtle.getFuelLevel() <= 10 then
    for i = 1,max-1 do
      turtle.select(i)
      if turtle.refuel() then
        break
      end
    end
  end
end
curlen = 1
totforw = 0
max = 16
 
write("Length of main tunnel: ")
tunlen = tonumber(read())
write("Length of branch: ")
branlen = tonumber(read())
write("Space between branches: ")
space = tonumber(read())
term.clear()
term.setCursorPos(1,1)
print("Would you like torches to be place?")
print("If so, type 'y'")
print("If not, type 'n'")
torches = read()
term.clear()
term.setCursorPos(1, 1)
print("Would you like me to dropoff items in chests?")
print("If you would like normal chests, type 'chests'.")
print("If you would like enderchests, type 'enderchest'.")
print("If placing blocks with turtles is disabled and you still want chests,")
print("type 'd' and place a chest to the left of the turtle.")
print("If you would not like chests to placed, type 'n'")
print("Warning: Not using chests will most likely result in lost resources!")
chest = read()
term.clear()
term.setCursorPos(1, 1)
print("Would you like me to bridge over")
print("holes, water, and lava?")
print("If so, type 'y'")
print("If not, type 'n'")
bridge = read()

term.clear()
term.setCursorPos(1,1)

if chest ~= "d" then
  print("Please place your "..chest.." in slot 16")
  while turtle.getItemCount(16) == 0 do
    sleep(1)
  end
  max = max-1
end

term.clear()
term.setCursorPos(1, 1)

if torches == "y" then
  print("Please place torches in slot 15...")
  while turtle.getItemCount(15) == 0 do
    sleep(1)
  end
  max = max-1
end

term.clear()
term.setCursorPos(1, 1)

if bridge == "y" then
  print("Please place bridging material in slot 14")
  while turtle.getItemCount(14) == 0 do
    sleep(1)
  end
  max = max-1
end

term.clear()
term.setCursorPos(1, 1)
textutils.slowPrint("Begining strip mine...")
print(max)

for i = curlen,tunlen do
  inMainTunnel = true
  if turtle.getItemCount(max) > 0 then
    placeChest()
  end  
  inMainTunnel = true
  forward(space+1, true)
  turtle.turnLeft()
  inMainTunnel = false
  forward(branlen, true)
  torch()
  turtle.turnLeft()
  turtle.turnLeft()
  turtle.down()
  forward(branlen, false)
  turtle.up()
  forward(branlen, true)
  torch()
  turtle.turnLeft()
  turtle.turnLeft()
  turtle.down()
  forward(branlen, false)
  inMainTunnel = true
  turtle.turnRight()
  turtle.up()
  refuel()
end

turtle.turnRight()
turtle.turnRight()
turtle.down()
forward(totforw, false)
turtle.up()
if chest == "d" then
  turtle.turnRight()
  dropoff()
  turtle.turnLeft()
end
textutils.slowPrint("Mining operation completed!")