function refuel()
  if turtle.getFuelLevel() <= 10 then
    turtle.select(16)
    turtle.refuel(5)
  end
end

tn = 1

function torch()
  turtle.select(15)
  turtle.turnRight()
  turtle.turnRight()
  turtle.place()
  turtle.turnLeft()
  turtle.turnLeft()
end

function bridge()
  if not turtle.detectDown() then
    turtle.select(1)
    turtle.placeDown()
  end
end

function turn()
  if tn == 1 then
    turtle.turnRight()
    turtle.dig()
    for r = 1,3 do
      turtle.forward()
      turtle.digUp()
      turtle.dig()
    end
    turtle.turnRight()
    tn = 1
  elseif tn == 2 then
    turtle.turnLeft()
    turtle.dig()
    for d = 1,3 do
      turtle.forward()
      turtle.digUp()
      turtle.dig()
    end
    turtle.turnLeft()
    tn = 2
  end
end




function Mine()
  refuel()
  tlen = 1
  turtle.digUp()
  turtle.dig()
  while tlen <= 42 do
    for cpos = 1,14 do
      turtle.digUp()
      turtle.dig()
      turtle.forward()
      bridge()
      tlen = tlen + 1
    end
  torch()
  refuel()
  end
end

function Start()
  for x = 1,10 do
    Mine()
    turn()
  end
end

Start()