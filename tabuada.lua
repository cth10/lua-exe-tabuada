os.execute("chcp 65001 > nul")  -- Muda para UTF-8
math.randomseed(os.time())

print("Tabuada")
print("Digite 1 para entrar no modo treino")
print("Digite 2 para entrar no modo resultado")

local choice = io.read()

if choice == "1" then
    -- Modo treino
    print("Modo treino, acerte o número aleatório da tabuada. Para sair, digite sair")

    local acertos = 0
    local startTime = os.time()
    local sair_do_treino = false

    while not sair_do_treino do
        local numero1 = math.random(2, 10)
        local numero2 = math.random(2, 10)
        local acertou = false

        while not acertou do
            print("Digite o resultado de " .. numero1 .. " x " .. numero2 .. " ou 'sair':")
            local entry = io.read()
            if entry == "sair" then
                sair_do_treino = true
                break
            end

            local palpite = tonumber(entry)
            if palpite == numero1 * numero2 then
                acertou = true
                acertos = acertos + 1
                print("Parabéns! Você acertou o resultado de " .. numero1 .. " x " .. numero2 .. "!")
            else
                -- Errou: sai do treino
                sair_do_treino = true
                break
            end
        end
    end

    -- Estatísticas finais
    local elapsed = os.time() - startTime
    print("Você acertou " .. acertos .. " resultados em " .. elapsed .. " segundos antes de errar ou sair!")
    print("Pressione ENTER para sair...")
    io.read()

elseif choice == "2" then
    print("Modo resultado, exibe a tabuada")

    while true do
        print("Digite um número, se quiser sair digite sair")
        local input = io.read()
        if input == "sair" then
            print("Saindo...")
            break
        end

        local numero = tonumber(input)
        if not numero then
            print("Por favor, digite um número válido ou 'sair' para encerrar.")
        else
            for contador = 1, 10 do
                print(numero .. " x " .. contador .. " = " .. (numero * contador))
            end
        end
    end
end