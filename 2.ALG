algoritmo "2"
var
    nomes :vetor[0..4] de caractere
    notas :vetor[0..4] de real
    temp :real
    i :inteiro

inicio
    para i de 0 ate 4 passo 1 faca
        escreval("O "+(i+1)+" aluno é: ")
        leia(nomes[i])
        escreval("A 1 nota é: ")
        leia(notas[i])
        escreval("A 2 nota é: ")
        leia(temp)
        notas[i] <- (temp + notas[i])/2
    fimpara

    para i de 0 ate 4 passo 1 faca
        escreval("Aluno "+ (nomes[i]) + "; Média: " + notas[i])
    fimpara
fimalgoritmo