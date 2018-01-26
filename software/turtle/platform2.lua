local tArgs = {...}
local largura = tonumber(tArgs[1]) 
local comprimento = tonumber(tArgs[2])
local diagonal = tonumber(tArgs[3])
local slot = 1

if diagonal == nil then
    print("Uso: 'platform2 <largura> <comprimento> <diagonal (0 = reto; 1 = direita; 2 = esquerda)>'")
	return
end


function vai_pra_frente()
    while turtle.forward() == false do
        turtle.attack()
        turtle.dig()
    end
end

function quebrar_e_botar()
    if turtle.getItemCount(slot) == 0 then
        if slot < 16 then
            slot = slot + 1
        else
            slot = 1
        end
        turtle.select(slot)
        turtle.digDown()
        turtle.placeDown()
    else
        turtle.digDown()
        turtle.placeDown()
    end
end

turtle.select(slot)
vai_pra_frente()

for i = 1, comprimento, 1 do
    -- Virar pra Esquerda
    turtle.turnLeft()
    
    -- Botar os blocos
    for i = 1, largura, 1 do
        quebrar_e_botar()
        vai_pra_frente()
    end
    
    -- Virar de volta
    turtle.turnRight()
    turtle.turnRight()
    
    -- Voltar
    for i = 1, largura, 1 do
        vai_pra_frente()
    end
    
    -- Vira pra frente
    turtle.turnLeft()
    
    -- Se for pra ir reto
    if (diagonal == 0) then
        vai_pra_frente()
    end
    
    -- Se for pra ir torto pra direita
    if (diagonal == 1) then
        turtle.turnRight()
        vai_pra_frente()
        turtle.turnLeft()
        vai_pra_frente()
    end
    
    -- Se for pra ir torto pra esquerda
    if (diagonal == 2) then
        turtle.turnLeft()
        vai_pra_frente()
        turtle.turnRight()
        vai_pra_frente()
    end

end
