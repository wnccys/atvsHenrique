algoritmo "4"
// acabei fazendo um insert sort nesse aq
//  !!
var
    nomes :vetor[0..4] de caractere
    temp :caractere
    i :inteiro
    j :inteiro
inicio
    para i de 0 ate 4 passo 1 faca
        escreval("Entre com o ",(i+1)," nome: ")
        leia(nomes[i])
        escreval(nomes[i])
    fimpara

    para i de 0 ate 4 passo 1 faca
        enquanto j <= 4 faca
                se (asc(nomes[i]) < asc(nomes[j])) entao
                    temp <- nomes[i]
                    nomes[i] <- nomes[j]
                    nomes[j] <- temp
                fimse
                j <- j+1
        fimenquanto
        j <- 0
    fimpara

    para i de 0 ate 4 passo 1 faca
        escreval((i+1)+" - "+nomes[i])
    fimpara
fimalgoritmo