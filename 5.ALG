algoritmo "5"
var
    nomes :vetor[0..4] de caractere
    continuar :caractere
    i :inteiro
inicio
    para i de 0 ate 4 passo 1 faca
        escreval ("Escolha o "+(i+1)+" nome:")
        leia(nomes[i])
    fimpara

    repita 
        escreval("Escreva o índice que deseja acessar: ")
        leia(i)
        escreval("O nome no índice "+i+" é: "+ nomes[i])
        escreval("Deseja consultar outro índice? ")
        leia(continuar)
    ate(continuar = "n") ou (continuar = "N")
fimalgoritmo