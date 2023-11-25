algoritmo "1"
var
    lista_nomes :vetor[0..9] de caractere
    i :inteiro

inicio
    para i de 0 ate 9 passo 1 faca
        escreval ("Entre com o "+(i+1)+" nome: ")
        leia(lista_nomes[i])
    fimpara

    para i de 0 ate 9 passo 1 faca
        escreval("O "+(i+1)+" nome é:  "+lista_nomes[i])
    fimpara
fimalgoritmo