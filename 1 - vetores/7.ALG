algoritmo "7"
var
    nums :vetor[0..8] de inteiro
    teste :vetor[0..8] de logico
    i :inteiro
inicio
    escreval("Nesse programa você pode escolher 9 números para dizermos se é primo ou não!")
    para i de 0 ate 8 passo 1 faca
        escreval("Escolha o "+(i+1)+" número: ")
        leia(nums[i])
        escreval(nums[i])
    fimpara

    para i de 0 ate 8 passo 1 faca
        enquanto (counter > 1) faca
            se (nums[i]%counter = 0) entao
                teste[i] <- verdadeiro
                interrompa
            fimse
            counter <- counter + 1
        fimenquanto 
    fimpara
    
fimalgoritmo