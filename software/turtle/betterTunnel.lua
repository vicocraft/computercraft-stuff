local args = {...}

local function sentidoOposto()
  turtle.turnRight()
  turtle.turnRight()
end

local function go()
  turtle.dig()
  turtle.forward()
end

if #args == 1 then
  for i=1, args[1] do
    shell.run("tunnel", "5")
    sentidoOposto()
    if turtle.getItemCount(16) > 0 then
        turtle.select(2)
        turtle.place()
        for slot=3, 16 do
          turtle.select(slot)
          turtle.drop()
        end
      turtle.select(1)
    else
      turtle.select(1)
      turtle.place()
    end
    sentidoOposto()
    go()
  end
else
  print("Usage: betterTunnel <distance * 5>")
end