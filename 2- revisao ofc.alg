algoritmo "RecompensaLeitura"

// Declara��o de vari�veis
var
    horasLeitura, pontos, pontosComBonus, cuponsDesconto: inteiro
    valorCupons: real

// Entrada de dados
inicio
    escreval("Digite o total de horas de leitura no m�s: ")
    leia(horasLeitura)

// C�lculo dos pontos
    se horasLeitura <= 5 ent�o
        pontos := horasLeitura * 3
    senao
        se horasLeitura <= 15 ent�o
            pontos := horasLeitura * 7
        senao
            pontos := horasLeitura * 12
        fimse
    fimse

// Aplica��o do b�nus
    se pontos > 50 ent�o
        pontosComBonus := pontos + pontos * 10 / 100
    senao
        pontosComBonus := pontos
    fimse

// C�lculo dos cupons de desconto
    cuponsDesconto := pontosComBonus / 10
    valorCupons := cuponsDesconto * 2.0

// Exibi��o dos resultados
    escreval("Total de pontos ganhos: ", pontosComBonus)
    escreval("N�mero de cupons de desconto: ", cuponsDesconto)
    escreval("Valor total em cupons de desconto: R$ ", valorCupons:0:2)

fimalgoritmo
