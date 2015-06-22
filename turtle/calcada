
slot = 0

function detectar_e_limpar()
    while not turtle.forward() do
        if turtle.detect() then
            turtle.dig()
        else
            turtle.attack()
        end
    end
end

function checar_slots()
    slot = turtle.getSelectedSlot()
    initial_slot = turtle.getSelectedSlot()
    while turtle.getItemCount(slot) <= 0 do
        if slot >= 16 then
            slot = 1
        else
            slot = slot + 1
            turtle.select(slot)
        end
        if initial_slot == slot then
            print("Insira algum material na turtle e pressione qualquer tecla para continuar...")
            os.pullEvent("key")
        end
    end
end

function colocar_bloco()
    if turtle.detectDown() then
        turtle.digDown()
    end
    turtle.placeDown()
end

write("Quantos blocos para frente? ")
local num = read()

for i=1,num do
   detectar_e_limpar()
   checar_slots()
   colocar_bloco()
end