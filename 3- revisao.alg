Algoritmo
    // Inicializa��o
    Var
        numeroSorteado, palpite, tentativasRestantes : Inteiro
        entradaValida : Logico

    // Fun��o para gerar um n�mero aleat�rio entre 1 e 10
    Funcao GerarNumeroAleatorio() : Inteiro
        Retorne Aleatorio(1, 10)
    FimFuncao

    // In�cio do jogo
    numeroSorteado <- GerarNumeroAleatorio()
    tentativasRestantes <- 4

    // Loop principal do jogo
    Enquanto tentativasRestantes > 0 Fa�a
        // Solicita um palpite ao jogador
        Escreva("Digite um n�mero entre 1 e 10: ")
        Leia(palpite)

        // Valida a entrada do jogador
        entradaValida <- (palpite >= 1) E (palpite <= 10)

        Se (entradaValida) Ent�o
            Se (palpite = numeroSorteado) Ent�o
                Escreva("Parab�ns! Voc� acertou o n�mero ", numeroSorteado, "!")
                FimEnquanto // Termina o jogo
            Sen�o
                Se (palpite < numeroSorteado) Ent�o
                    Escreva("Tente um n�mero maior.")
                Sen�o
                    Escreva("Tente um n�mero menor.")
                FimSe
                tentativasRestantes <- tentativasRestantes - 1
            FimSe
        Sen�o
            Escreva("Entrada inv�lida. Digite um n�mero entre 1 e 10.")
        FimSe

        // Verifica se o jogador esgotou todas as tentativas
        Se (tentativasRestantes = 0) Ent�o
            Escreva("Voc� perdeu! O n�mero era ", numeroSorteado, ".")
        FimSe
    FimEnquanto

FimAlgoritmo
