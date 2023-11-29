algoritmo "7"
var
    nums :vetor[0..8] de inteiro
    teste :vetor[0..8] de logico
    i, counter, j, x :inteiro
inicio
    escreval("Nesse programa você pode escolher 9 números para dizermos se é primo ou não!")
    para i de 0 ate 8 passo 1 faca
        escreval("Escolha o "+(i+1)+" número: ")
        leia(nums[i])
        escreval(nums[i])
    fimpara

    // mais 1 que a lógica tá certinha, mas o visualg, mesmo rodando na própria IDE insiste em dar erro,
    // ele nao itera entre os loops ai o contador(i) fica sempre no mesmo valor, o jeito foi fazer uma variável
    // que ela sim itera o valor de i;
    x <- 0
    para i de x ate 8 faca
        counter <- (nums[i]-1)
        enquanto (counter > 1) faca
            se (nums[i]%counter = 0) entao
                teste[i] <- falso
                interrompa
            fimse
            counter <- (counter - 1)
        fimenquanto
        x <- x+1
        i <- x 
    fimpara
    
    x <- 0
    para j de x ate 8 faca
        se (teste[j]) entao
            escreval (nums[j]+" é primo!")
        senao
            escreval (nums[j]+" não é primo!")
        fimse
        x <- x+1
    fimpara
fimalgoritmo