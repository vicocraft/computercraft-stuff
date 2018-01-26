
function enfiar()
	while not turtle.detectDown() do
	  turtle.placeDown()
	end
end

write("How many times should I loop? ")
local num = read()
for i=1,num do
   turtle.forward()
   enfiar()
end