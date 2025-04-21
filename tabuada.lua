os.execute("chcp 65001 > nul")  -- Muda para UTF-8
print("Tabuada")

print("Digite um número")
local numero = io.read("*n")

local contador = 1

for i = 1, 10 do
    print(numero .. " x " .. contador .. " = " .. numero * contador)
    contador = contador + 1
end

print("\nPressione qualquer tecla para sair...")
os.execute("pause") -- Funciona no Windows