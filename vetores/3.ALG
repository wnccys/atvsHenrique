algoritmo "3"
var
    vet1 :vetor[0..4] de inteiro
    vet2 :vetor[0..4] de inteiro
    soma :vetor[0..4] de inteiro
    i :inteiro
inicio
    i <- 0
    escreval("Esse soma dois vetores baseados em valores inseridos por você!")
    escreval("Selecione")
    repita
        escreval((i+1)+" número do primeiro vetor:")
        leia(vet1)
        escreval((i+1)+" número do segundo vetor:")
        leia(vet2)
        soma[i] <- (int(vet1[i]) + int(vet2[i]))
        escreval(soma[i])
        i <- i+1
    ate(i>4)

    para i de 0 ate 4 passo 1 faca
        escreval("Soma da posição "+(i+1)+": "+soma[i])
    fimpara

fimalgoritmo