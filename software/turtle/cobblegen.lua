print("===== Gerador de Cobblestone =====")
print("ATENCAO! Coloque um baú atrás da turtle para recolher as pedras!")
print("Está pronto? Pressione qualquer tecla pra continuar")
os.pullEvent("key")
term.clear()
term.setCursorPos(1,1)
print("E la vamos nos!")

while true do
	os.sleep(1)
	if turtle.detect() then
		turtle.dig()
	end
	itemcount = turtle.getItemCount(16)
	if itemcount == 64 then
		turtle.turnLeft()
		turtle.turnLeft()
		for i=1,16 do
			turtle.select(i)
			turtle.drop()
		end
		turtle.turnRight()
		turtle.turnRight()
		turtle.select(1)
	end
end