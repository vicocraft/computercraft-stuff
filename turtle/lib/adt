--Advanced Turtle API
--@author truh
 
function hungry()
  fuelLevel = turtle.getFuelLevel()
  if fuelLevel == "unlimited" then
    return false
  elseif fuelLevel < 1 then
    return true
  else
    return false
  end
end
 
function eat(n)
  if n==nil then
    n=1
  end
  for i=1, 16 do
    turtle.select(i)
    if turtle.refuel(n) then
      break
    end
  end
  if hungry() then
    return false
  else
    return true
  end
end
 
function autoEat()
  while hungry() do
    eat(1)
    if hungry() then
      os.sleep(10)
    end
  end
end
 
function forward(n)
  if n==nil then
    n=1
  end
  autoEat()
  for i=1, n do
    while not turtle.forward() do end
  end
end
       
function back(n)
  if n==nil then
    n=1
  end
  autoEat()
  for i=1, n do
    while not turtle.back() do end
  end  
end
 
function up(n)
  if n==nil then
    n=1
  end
  autoEat()
  for i=1, n do
    while not turtle.up() do end
  end  
end
 
function down(n)
  if n==nil then
    n=1
  end
  autoEat()
  for i=1, n do
    while not turtle.down() do end
  end  
end
       
function turnLeft(n)
  if n==nil then
    n=1
  end
  for i=1, n do
    turtle.turnLeft()
  end    
end
       
function turnRight(n)
  if n==nil then
    n=1
  end
  for i=1, n do
    turtle.turnRight()
  end    
end
 
function place()
  for i=1, 16 do
    turtle.select(i)
    if turtle.place() then
      break
    end
  end
end
 
function placeUp()
  for i=1, 16 do
    turtle.select(i)
    if turtle.placeUp() then
      break
    end
  end
end
 
function placeDown()
  for i=1, 16 do
    turtle.select(i)
    if turtle.placeDown() then
      break
    end
  end
end
 
function inventorySpace()
  space=0
  for i=1, 16 do
    space=space+turtle.getItemSpace(i)
  end
  return space
end