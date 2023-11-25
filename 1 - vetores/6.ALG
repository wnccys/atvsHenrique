algoritmo "6"

var
    nomes :vetor[0..19] de caractere
    salario :vetor[0..19] de real
    i :inteiro
inicio
    i <- 0
    escrevl("Bem-vindo, esse programa permite armazenar nomes de pessoas e atribuir salarios á elas, dado um certo reajuste.")
    repita
        escreval("Digite o nome para guardarmos: ")
        leia(nomes[i])
        escreval("Agora informe o saldo: ")
        leia(salario[i])

        se (salario[i] < 0) entao
            salario[i] <- 0
            escreval("Saindo...")
            interrompa
        fimse
        i <- i+1
    ate (i > 19)
    i <- 0

    para i de 0 ate 19 passo 1 faca
        escreval ("Pessoa: "+nomes[i]+" - Saldo com o Reajuste: "+(salario[i] + (salario[i] * (8/100))))
    fimpara

fimalgoritmo