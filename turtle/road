--Created by jubba890
--Thanks for using it!
fuel = turtle.getFuelLevel()

function rcheck()
slot = turtle.getItemCount(5)
if slot > 4 then
else
print("More Stone Brick Slabs Please!")
os.queueEvent("terminate")
os.pullEvent("terminate")
end
slot = turtle.getItemCount(6)
if slot > 4 then
else
print("More Black Wool Please!")
os.queueEvent("terminate")
os.pullEvent("terminate")
end
slot = turtle.getItemCount(7)
if slot > 1 then
else
print("More Glass Fiber Cable Please!")
os.queueEvent("terminate")
os.pullEvent("terminate")
end
end

if fuel > 100 then
for i = 1,100 do
rcheck()
turtle.turnRight()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.select(5)
turtle.place()
turtle.back()
turtle.place()
turtle.select(6)
turtle.back()
turtle.place()
turtle.back()
turtle.place()
turtle.turnLeft()
turtle.digDown()
turtle.down()
turtle.select(7)
turtle.digDown()
turtle.placeDown()
turtle.up()
turtle.turnLeft()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.select(5)
turtle.place()
turtle.back()
turtle.place()
turtle.select(6)
turtle.back()
turtle.place()
turtle.back()
turtle.place()
turtle.turnRight()
turtle.dig()
turtle.forward()
end
else
turtle.select(1)
turtle.refuel(16)
print("Refueled Try Again")
end