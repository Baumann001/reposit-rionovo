ALGORITMO "GerenciamentoDeClientes"
VAR
   nomeClientes: vetor[1 .. 10] de caractere
   emailClientes: vetor[1 .. 10] de caractere
   telefoneClientes: vetor[1 .. 10] de caractere
   opcao, i, index: inteiro
   nome, email, telefone: caractere
   encontrou: inteiro  // 0 para FALSO, 1 para VERDADEIRO

INICIO
   // Inicializar vetores
   PARA i DE 1 ate 10 FACA
      nomeClientes[i] <- ""
      emailClientes[i] <- ""
      telefoneClientes[i] <- ""
   FIMPARA

   REPITA
      ESCREVAL("Menu de Gerenciamento de Clientes")
      ESCREVAL("1. Adicionar Cliente")
      ESCREVAL("2. Listar Clientes")
      ESCREVAL("3. Editar Cliente")
      ESCREVAL("4. Remover Cliente")
      ESCREVAL("5. Sair")
      ESCREVA("Escolha uma opção: ")
      LEIA(opcao)

      ESCOLHA opcao
         CASO 1
            encontrou <- 0  // Aqui usamos 0 para representar FALSO
            // Adicionar novo cliente

               SE nomeClientes[i] = "" ENTAO
                  ESCREVA("Digite o nome do cliente: ")
                  LEIA(nome)
                  ESCREVA("Digite o email do cliente: ")
                  LEIA(email)
                  ESCREVA("Digite o telefone do cliente: ")
                  LEIA(telefone)

                  nomeClientes[i] <- nome
                  emailClientes[i] <- email
                  telefoneClientes[i] <- telefone

                  encontrou <- 1  // Aqui usamos 1 para representar VERDADEIRO
                  ESCREVAL("Cliente adicionado com sucesso!")
               FIMSE

            SE encontrou = 0 ENTAO
               ESCREVAL("Não há espaço para adicionar mais clientes.")
            FIMSE

         CASO 2
            // Listar clientes
            ESCREVAL("Lista de Clientes: ")
            PARA i DE 1 ate 10 FACA
               SE nomeClientes[i] <> "" ENTAO
                  ESCREVAL("Cliente ", i, ": ", nomeClientes[i], ", Email: ", emailClientes[i], ", Telefone: ", telefoneClientes[i])
               FIMSE
            FIMPARA

         CASO 3
            // Editar cliente
            ESCREVA("Digite o índice do cliente que deseja editar (1 a 10): ")
            LEIA(index)
            SE nomeClientes[index] <> "" ENTAO
               ESCREVA("Digite o novo nome do cliente: ")
               LEIA(nome)
               ESCREVA("Digite o novo email do cliente: ")
               LEIA(email)
               ESCREVA("Digite o novo telefone do cliente: ")
               LEIA(telefone)

               nomeClientes[index] <- nome
               emailClientes[index] <- email
               telefoneClientes[index] <- telefone

               ESCREVAL("Cliente editado com sucesso!")
            SENAO
               ESCREVAL("Cliente não encontrado.")
            FIMSE

         CASO 4
            // Remover cliente
            ESCREVA("Digite o índice do cliente que deseja remover (1 a 10): ")
            LEIA(index)
            SE nomeClientes[index] <> "" ENTAO
               nomeClientes[index] <- ""
               emailClientes[index] <- ""
               telefoneClientes[index] <- ""

               ESCREVAL("Cliente removido com sucesso!")
            SENAO
               ESCREVAL("Cliente não encontrado.")
            FIMSE

         CASO 5
            ESCREVAL("Saindo do programa...")


         CASO CONTRARIO:
            ESCREVAL("Opção inválida. Tente novamente.")
      FIMESCOLHA
   ATE opcao = 5
FIMALGORITMO
