local tArgs = {...}
local length = tonumber(tArgs[1]) 
local width = tonumber(tArgs[2])
local turnRight = true
local slot = 1

-- ASSUMINDO QUE DO LADO ESQUERDO A TURTLE LEVA UMA PÁ E NO DIREITO UMA PICARETA!!!
function vicoDig()
	local block = turtle.inspect()
	if block and block.name == "minecraft:dirt" then
		turtle.dig("left") -- Use left tool
	else
		-- Fallback to Pickaxe
		turtle.dig("right")
	end
end

function vicoDigUp()
	local block = turtle.inspectUp()
	if block and block.name == "minecraft:dirt" then
	  turtle.digUp("left") -- Use left tool
	else
		-- Fallback to Pickaxe
		turtle.digUp("right")
	end
end

function vicoDigDown()
	local block = turtle.inspectDown()
	if block and block.name == "minecraft:dirt" then
		turtle.digDown("left") -- Use left tool
	else
		-- Fallback to Pickaxe
		turtle.digDown("right")
	end
end

if width == nil then
	print("1. Place turtle facing direction of said platform on left side.")
	print("2. Load turtle with materials for the platform.")
	print("3. Type 'platformdual <length> <width>'")
	return
end

turtle.select(slot)

vicoDig()
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
		vicoDigDown()
		turtle.placeDown()
	else
		vicoDigDown()
		turtle.placeDown()
	end
    
	if i < length then
		vicoDig()
		turtle.forward()
    end
  
end
  
  if j < width then
  
    if turnRight == true then
      turtle.turnRight()
      vicoDig()
      turtle.forward()
      turtle.turnRight()
      turnRight = false
    else
      turtle.turnLeft()
      vicoDig()
      turtle.forward()
      turtle.turnLeft()
      turnRight = true
    end
    
  end
  
end