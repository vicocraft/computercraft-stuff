main_hand = "right"
off_hand = "left"

function checkHandness(isRightHanded)
	if isRightHanded then
		main_hand = "right"
		off_hand = "left"
	else
		main_hand = "left"
		off_hand = "right"
	end

end

function dualDig()
	local block = turtle.inspect()
	if block and block.name == "minecraft:dirt" then
		turtle.dig(main_hand) -- Use main tool
	else
		-- Fallback to Pickaxe
		turtle.dig(off_hand)
	end
end

function dualDigUp()
	local block = turtle.inspect()
	if block and block.name == "minecraft:dirt" then
	  turtle.digUp(main_hand) -- Use main tool
	else
		-- Fallback to Pickaxe
		turtle.digUp(off_hand)
	end
end

function dualDigDown()
	local block = turtle.inspect()
	if block and block.name == "minecraft:dirt" then
		turtle.digDown(main_hand) -- Use main tool
	else
		-- Fallback to Pickaxe
		turtle.digDown(off_hand)
	end
end

