local length = 0

function roadBuild()
    for i = 1, length + 1, 1 do
      turtle.digDown()
      turtle.placeDown()
      if i <= length then
        turtle.forward()
      end
    end
end
function goLeft()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
end
function goRight()
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
end

while turtle.forward() do
  length = length + 1
end

for i = 1, length, 1 do
  turtle.back()
end

turtle.turnLeft()
turtle.forward()
turtle.turnRight()

roadBuild()
goRight()
roadBuild()
goLeft()
roadBuild()
