-- VARIABLES
runned = 0

-- FUNCTIONS
function makeTurn(side)
  if side == "right" then
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
  elseif side == "left" then
    turtle.turnLeft()
    turtle.forward()
    turtle.turnLeft()
  end
end

function goForward(times)
  for i = 1, times do
    turtle.forward()
  end
end

function goToStart()
  turtle.up()
  goForward(2)
  turtle.turnRight()
  goForward(4)
  turtle.turnLeft()
end

function goHome()
  turtle.turnLeft()
  turtle.turnLeft()
  goForward(10)
  turtle.turnLeft()
  goForward(4)
  turtle.turnLeft()
  turtle.down()
end

function row()
  for k=1, 8 do
    turtle.digDown()
    turtle.placeDown()
    turtle.forward()
  end
  turtle.digDown()
  turtle.placeDown()
end

function mainLoop()
  for l=1, 4 do
    row()
    makeTurn("left")
    row()
    makeTurn("right")
  end
  row()
end

function dumpItems()
  for p = 2, 16 do
    turtle.select(p)
    turtle.dropDown()
  end
  turtle.select(1)
end

function getTime()
  hora = http.get("http://joaopms.net/computercraft/hora_portugal.php")
  return hora.readLine()
end

function log(message)
  print("[" .. getTime() .. "] " .. message)
end

function checkFuel()
  if turtle.getFuelLevel == 0 then
      log("Falta-me combustivel para trabalhar! A terminar!")
      return
  end
end

-- MAIN PROGRAM
-- Program info
print("Farm 9x9 por joaopms - Version 1.0")
print("=======================================")

-- Check for seeds
if turtle.getItemCount(1) == 0 then
  log("Precisas de colocar pelo menos uma semente/batata/cenoura/etc no primeiro slot!")
  return
end

while true do
  -- Check for fuel
  checkFuel()

  -- Harvest (Start - Messages and Integer Increase)
  log("Colheita a comecar!")
  runned = runned + 1;

  -- Harvest (Action)
  goToStart()
  mainLoop()
  goHome()
  dumpItems()

  -- Harvest (End - Messages and Next Harvest Countdown)
  log("Colheita #" .. runned .." concluida! Nova colheita dentro de 30 minutos!")
  sleep(600)
  log("Nova colheita dentro de 20 minutos!")
  sleep(600)
  log("Nova colheita dentro de 10 minutos!")
  sleep(300)
  log("Nova colheita dentro de 5 minutos!")
  sleep(300)
end