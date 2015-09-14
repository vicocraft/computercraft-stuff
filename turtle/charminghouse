-- Original House Builder

-- item numbers in inventory

item_floor1 = 1
item_floor2 = 2
item_wall1 = 3
item_wall2 = 4
item_wall3 = 5
item_fence = 6
item_roof1 = 7
item_roof2 = 8
item_roofEdge = 9
item_window = 10
item_torch = 11
item_door = 12
item_plate = 13
item_corner1 = 14
item_corner2 = 15
item_ladder = 16

-- functions

function f()
	turtle.forward()
end
function b()
	turtle.back()
end
function l()
	turtle.turnLeft()
end
function ll()
	turtle.turnLeft()
	turtle.turnLeft()
end
function r()
	turtle.turnRight()
end
function u()
	turtle.up()
end
function d()
	turtle.down()
end
function PlaceDown(slot)
	if (turtle.getSelectedSlot() ~= slot) then
		turtle.select(slot)
	end
	turtle.placeDown()
end
function Place(slot)
	if (turtle.getSelectedSlot() ~= slot) then
		turtle.select(slot)
	end
	turtle.place()
end
function PlaceUp(slot)
	if (turtle.getSelectedSlot() ~= slot) then
		turtle.select(slot)
	end
	turtle.placeUp()
end
function PlaceDownCorner()
		if (corner_count < 64) then
			if (turtle.getSelectedSlot() ~= item_corner1) then turtle.select(item_corner1) end
		elseif (corner_count < 128) then
			if (turtle.getSelectedSlot() ~= item_corner2) then turtle.select(item_corner2) end
		end
		corner_count = corner_count+1
		turtle.placeDown()
	end
function PlaceCorner()
	if (corner_count < 64) then
		if (turtle.getSelectedSlot() ~= item_corner1) then turtle.select(item_corner1) end
	elseif (corner_count < 128) then
		if (turtle.getSelectedSlot() ~= item_corner2) then turtle.select(item_corner2) end
	end
	corner_count = corner_count+1
	turtle.place()
end
function PlaceDownWall()
	if (wall_count < 64) then
		if (turtle.getSelectedSlot() ~= item_wall1) then turtle.select(item_wall1) end
	elseif (wall_count < 128) then
		if (turtle.getSelectedSlot() ~= item_wall2) then turtle.select(item_wall2) end
	elseif (wall_count < 192) then
		if (turtle.getSelectedSlot() ~= item_wall3) then turtle.select(item_wall3) end
	end
	wall_count = wall_count+1
	turtle.placeDown()
end
function PlaceDownFloor()
		if (floor_count < 64) then
			if (turtle.getSelectedSlot() ~= item_floor1) then turtle.select(item_floor1) end
		elseif (floor_count < 128) then
			if (turtle.getSelectedSlot() ~= item_floor2) then turtle.select(item_floor2) end
		end
		floor_count = floor_count+1
		turtle.placeDown()
end
function PlaceDownRoof()
		if (roof_count < 64) then
			if (turtle.getSelectedSlot() ~= item_roof1) then turtle.select(item_roof1) end
		elseif (roof_count < 128) then
			if (turtle.getSelectedSlot() ~= item_roof2) then turtle.select(item_roof2) end
		end
		roof_count = roof_count+1
		turtle.placeDown()
end
function PlaceUpRoof()
		if (roof_count < 64) then
			if (turtle.getSelectedSlot() ~= item_roof1) then turtle.select(item_roof1) end
		elseif (roof_count < 128) then
			if (turtle.getSelectedSlot() ~= item_roof2) then turtle.select(item_roof2) end
		end
		roof_count = roof_count+1
		turtle.placeUp()
end
function PlaceRoof()
		if (roof_count < 64) then
			if (turtle.getSelectedSlot() ~= item_roof1) then turtle.select(item_roof1) end
		elseif (roof_count < 128) then
			if (turtle.getSelectedSlot() ~= item_roof2) then turtle.select(item_roof2) end
		end
		roof_count = roof_count+1
		turtle.place()
end

-- pick up items from chest to the left
function part1()
	l()
	turtle.select(1)
	for i = 1,16 do 
		turtle.suck()
		turtle.select(i%16+1)
	end
	r()
	u()
end

-- build fence
function part2()
	turtle.select(item_fence) 
	for j = 1,3 do
		for i = 1,15 do
			turtle.placeDown()
			f()
		end
		r()
	end
	for i = 1,7 do
		turtle.placeDown()
		f()
	end
	f()f()
	for i = 1,6 do
		turtle.placeDown()
		f()
	end
	r()
		

	-- goto basement

	f()f()f()r()f()d()f()f()l()


	-- build basement

	floor_count = 0
	
	for j=1,5 do
		turtle.digDown()
		PlaceDownFloor()
		for i = 1,9 do 
			f()
			turtle.digDown()
			PlaceDownFloor()
		end
		r()
		f()
		r()
		turtle.digDown()
		PlaceDownFloor()
		for i = 1,9 do
			f()
			turtle.digDown()
			PlaceDownFloor()
		end
		if (j ~= 5) then
			l()
			f()
			l()
		end
	end

	-- goto and build path to door

	r()f()f()f()f()l()f()
	turtle.digDown()
	PlaceDownFloor()f()
	turtle.digDown()
	PlaceDownFloor()f()
	turtle.digDown()
	PlaceDownFloor()r()f()
	turtle.digDown()
	PlaceDownFloor()r()f()
	turtle.digDown()
	PlaceDownFloor()f()
	turtle.digDown()
	PlaceDownFloor()f()l()

	-- goto left front column

	f()f()f()f()r()

	-- build walls and windows and stuff...
	-- level 1

	corner_count = 0
	wall_count = 0

	turtle.select(item_corner1)
	u()

	for i = 1,3 do
		PlaceDownCorner()
		f()
		for k = 1,8 do
			PlaceDownWall()
			f()
		end
		r()
	end
	-- now comes the door wall
	PlaceDownCorner()
	f()
	for k = 1,3 do
		PlaceDownWall()
		f()
	end
	f()f()
	for k = 1,3 do
		PlaceDownWall()
		f()
	end
	r()
	u()
		
	-- level 2

	for i = 1,3 do
		PlaceDownCorner()f()
		PlaceDownWall()f()
		PlaceDown(item_window)f()
		PlaceDown(item_window)f()
		PlaceDownWall()f()
		PlaceDownWall()f()
		PlaceDown(item_window)f()
		PlaceDown(item_window)f()
		PlaceDownWall()f()
		r()
	end
	-- now comes the door wall
	PlaceDownCorner()f()
	PlaceDownWall()f()
	PlaceDown(item_window)f()
	PlaceDownWall()f()
	f()f()
	PlaceDownWall()f()
	PlaceDown(item_window)f()
	PlaceDownWall()f()
	r()
	u()

	-- level 3

	for i = 1,4 do
		PlaceDownCorner()
		f()
		for k = 1,8 do
			PlaceDownWall()
			f()
		end
		if i == 4 then l() else r() end
	end

	--level 4

	for i = 1,9 do
		b()
		PlaceCorner()
	end
	for i = 1,2 do
		u()
		PlaceDownCorner()
		r()b()d()
		for i = 1,8 do
			b()
			PlaceCorner()
		end
	end
	u()
	PlaceDownCorner()
	r()b()d()
	for i = 1,7 do
			b()
			PlaceCorner()
	end
	ll()
	turtle.select(item_corner1)
	turtle.dig()
	corner_count = corner_count-1
	f()
	ll()
	PlaceCorner()
	u()
	PlaceDownCorner()

	-- 2nd floor, level4

	f()l()f()
	for j=1,4 do
		PlaceDownWall()
		for i = 1,7 do 
			f()
			PlaceDownWall()
		end
		r()
		f()
		r()
		if not (j == 2) then PlaceDownWall() end -- leave hole for ladder
		for i = 1,7 do
			f()
			if not (j == 2 and i == 1) then PlaceDownWall() end
		end
		if (j ~= 4) then
			l()
			f()
			l()
		end
	end
	PlaceDownWall()
end

function part3()
	-- build vertical roof wall and windows
	f()r()u()
	for i = 1,7 do
		PlaceDownCorner()f()
	end
	PlaceDownCorner()ll()u()f()
	PlaceDownCorner()f()
	for i = 1,4 do
		PlaceDown(item_window)f()
	end
	PlaceDownCorner()ll()u()f()
	PlaceDownCorner()f()
	PlaceDown(item_window)f()
	PlaceDown(item_window)f()
	PlaceDownCorner()ll()u()f()
	PlaceDownCorner()f()
	PlaceDownCorner()
	-- get to other side
	d()f()d()f()d()f()d()l()
	for i = 1,9 do f() end
	l()
	for i = 1,7 do
		PlaceDownCorner()f()
	end
	PlaceDownCorner()ll()u()f()
	PlaceDownCorner()f()
	for i = 1,4 do
		PlaceDown(item_window)f()
	end
	PlaceDownCorner()ll()u()f()
	PlaceDownCorner()f()
	PlaceDown(item_window)f()
	PlaceDown(item_window)f()
	PlaceDownCorner()ll()u()f()
	PlaceDownCorner()f()
	PlaceDownCorner()f()
	d()f()d()f()d()f()d()f()d()d()l()f()l()
end

-- build roof
function part4()
	roofEdge_count = 0
	roof_count = 0
	
	function roofEdge()
		for i = 1,5 do
			PlaceUp(item_roofEdge)f()u()
		end
		PlaceUp(item_roofEdge)ll()b()
		for i = 1,5 do
			PlaceUp(item_roofEdge)d()b()
		end
		PlaceUp(item_roofEdge)
	end
	function easyRoofPart()
		PlaceRoof()u()f()u()f()
		for i = 1,4 do
			PlaceDownRoof()f()u()
		end
		PlaceDownRoof()f()ll()
		PlaceDownRoof()
		for i = 1,4 do 
			b()d()PlaceDownRoof()
		end
		b()d()b()d()
		PlaceRoof()
	end
	function badRoofPart()
		PlaceRoof()u()f()
		PlaceRoof()u()f()f()d()
		for i = 1,3 do PlaceUpRoof()f()u() end
		PlaceUpRoof()f()ll()
		for i = 1,3 do PlaceUpRoof()b()d() end
		PlaceUpRoof()b()b()
		PlaceRoof()b()d()
		PlaceRoof()
	end
	
	-- flow code
	roofEdge()
	b()u()r()f()l()
	easyRoofPart()
	for i = 1,8 do
		if (i % 2 == 1) then l()f()r() else r()f()l() end
		badRoofPart()
	end
	l()f()r()
	easyRoofPart()
	d()f()r()f()l()
	roofEdge()
end

-- ladders, torches, doors and stuff...
function part5()
	for i = 1,6 do f() end
	r()d()
	for i = 1,9 do f() end
	for i = 1,4 do u() end
	b()l()f()f()r()
	Place(item_torch)ll()
	for i = 1,5 do f() end
	Place(item_torch)l()
	for i = 1,5 do f() end
	r()
	Place(item_torch)ll()
	for i = 1,5 do f() end
	Place(item_torch)l()f()f()f()r()d()
	turtle.digDown()d()
	Place(item_ladder)d()
	PlaceUp(item_wall3)
	Place(item_ladder)
	for i = 1,2 do 
		d()
		Place(item_ladder)
	end
	b()b()b()l()f()f()u()
	Place(item_torch)ll()f()f()f()f()f()
	Place(item_torch)b()r()f()f()
	Place(item_torch)r()d()f()l()f()
	Place(item_door)l()b()
	Place(item_plate)r()
	Place(item_door)u()
	PlaceDown(item_plate)r()f()d()l()
	PlaceUp(item_torch)
	-- look for empty slot
	local slot = -1
	for i = 1,16 do 
		if turtle.getItemCount(i) == 0 then
			slot = i
			turtle.select(i)
			break
		end
	end
	turtle.dig()f()f()ll()
	Place(slot)b()u()
	Place(item_torch)ll()
	Place(item_torch)l()f()f()f()l()
	Place(item_torch)ll()
	Place(item_torch)d()
end

-- debug

function initPart3()
	floor_count = 106
	corner_count = 48
	wall_count = 140
end
function initPart4()
	floor_count = 106
	corner_count = 80
	wall_count = 140
end
function initPart5()
	floor_count = 106
	corner_count = 80
	wall_count = 140
	roof_count = 120
end

--------------------
-- use parts here --
--------------------

print("====== Charming House ======")
print("INSTRUCOES")
print("1. Coloque um bau do lado ESQUERDO da sua turtle (vista de tras);")
print("============================")
print("Pressione qualquer tecla para continuar...")
os.pullEvent("key")
term.clear()
term.setCursorPos(1,1)
print("====== Charming House ======")
print("INSTRUCOES")
print("2. No bau, coloque os blocos na seguinte ordem (comecando do primeiro slot na extrema esquerda):")
print("64xPedraLisa, 42xPedraLisa, 64xPlanks, 64xPlanks, 13xPlanks, 58xFence, 64xStairs, 56xStairs, 26xGlassPane, 12xTocha, 2xPorta, 2xPressurePlate, 64xTronco, 12xTronco, 4xLadder")
print("============================")
print("Pressione qualquer tecla para continuar...")
os.pullEvent("key")
term.clear()
term.setCursorPos(1,1)
print("====== Charming House ======")
print("INSTRUCOES")
print("3. Quando estiver pronto, pressione qualquer tecla para continuar...")
os.pullEvent("key")
term.clear()
term.setCursorPos(1,1)
print("Boa Construcao!")

part1()
part2()
part3()
part4()
part5()