local tArgs = {...}
local length = tonumber(tArgs[1]) 
local width = tonumber(tArgs[2])
local turnRight = true
local slot = 1

if width == nil then
	print("1. Place turtle facing direction of said platform on left side.")
	print("2. Load turtle with materials for the platform.")
	print("3. Type 'platform <length> <width>'")
	return
end

turtle.select(slot)

turtle.dig()
turtle.forward()

for j = 1, width, 1 do

	for i = 1, length, 1 do
	if turtle.getItemCount(slot) == 0 then
	
		if slot >= 16 then
			slot = 1
		else
			slot = slot + 1
		end
		turtle.select(slot)
		turtle.digDown()
		turtle.placeDown()
	else
		turtle.digDown()
		turtle.placeDown()
	end
    
	if i < length then
		turtle.dig()
		turtle.forward()
    end
  
end
  
  if j < width then
  
    if turnRight == true then
      turtle.turnRight()
      turtle.dig()
      turtle.forward()
      turtle.turnRight()
      turnRight = false
    else
      turtle.turnLeft()
      turtle.dig()
      turtle.forward()
      turtle.turnLeft()
      turnRight = true
    end
    
  end
  
end