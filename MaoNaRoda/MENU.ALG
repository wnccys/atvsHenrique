algoritmo "MaoNaRoda"

var
    nome, carro, escolhas, qrcode, cpf, email, selecionado :caractere
    opt, pag, indice, pontos, dias, indiceAG :inteiro
    carrinho, desconto, carrinhoAL :real
    pags :vetor[0..2] de caractere
    carros :vetor[1..18] de caractere
	detalhes :vetor[1..18] de caractere
    dados :vetor[0..4] de caractere
    unidades :vetor[1..3] de caractere
    horarios :vetor[1..3] de caractere
    compras :vetor[1..18] de caractere
    alugueis :vetor[1..18] de caractere
    parcelas :vetor[1..18] de caractere

    funcao limpartela() :caractere
    inicio
        escreval("
                                                            \
                                                            |
                                                            /
                                                            |
                                                            \
                                                            |
                                                            /
                                                            \
                                                            |
                                                            /
                                                            |
                                                            \
                                                            |
                                                            /
                                                            \
                                                            |
                                                            /
                                                            |
                                                            \
                                                            |
                                                            /
                                                            \
                                                            |
                                                            /
                                                            |
                                                            \
                                                            |
                                                            /
                                                            \
                                                            |
                                                            /
                                                            |
                                                            \
                                                            |
                                                            /
                                                            \
                                                            |
                                                            /
                                                            |
                                                            \
                                                            |
                                                            /


        ")
    fimfuncao
inicio
pags[0] <- ("


------------------------------------------------------------1 - Fiat Mobi--------------------------------------------------
Preço: R$ 69.990 ou R$101,95/dia
Versão: Like
Motor: 1.0 8V
Controles de estabilidade e assistente de partida em subidas estão disponíveis somente como kit opcional Pack Safety, que custa R$ 700 a mais.
O Mobi também só sai de fábrica com o airbag duplo frontal exigido por lei. No mais, ar, vidros dianteiros (com função “um toque”) e travas elétricos, computador de bordo,
direção hidráulica e o veterano motor 1.0 Fire de quatro cilindros, que foi recalibrado para se adequar às novas normas Proconve L7.



------------------------------------------------------------2 - Renault Kwid--------------------------------------------------

Preço: R$ 71.190 ou R$101,95/dia 
Versão: Zen
Motor: 1.0 12V
O Renault Kwid está totalmente renovado e pronto para ser seu. Ele acaba de ser reconhecido com os prêmios 'Melhor Valor de Revenda' e 'Menor Custo de Uso'
pela revista Quatro Rodas e é o mais econômico do Brasil, e com design robusto.
Conta com a tecnologia do media nav de 8“ com espelhamento de smartphone (Android Auto® e Apple CarPlay®).
Segurança com 4 airbags, controle eletrônico de estabilidade (ESP) e assistente de partida em rampa.
Tudo isso com 3 anos de garantia e o maior valor de revenda. Conheça e garanta já o seu.



------------------------------------------------------------3 - Citröen C3--------------------------------------------------

Preço: R$ 71.190 ou R$295,95/dia
Versão: Live
Motor: 1.0 6V
O novo citroen foi totalmente pensado para garantir o máximo de conforto, segurança, tecnologia e performance. O modelo pode ser customizado de muitas formas diferentes, tanto em itens de série quanto em cores. No caso, saiba que o novo C3 oferece uma série de combinações de cores diferentes,
que podem ser combinadas com o teto Dual Tone.



------------------------------------------------------------4 - Fiat Argo--------------------------------------------------

Preço: R$ 80.999 ou R$196,95/dia
Versão: 1.0
Motor: 1.0 6V
Design esportivo e exclusivo até nos pequenos detalhes. O Fiat Argo tem a essência italiana, a robustez brasileira e um estilo único no segmento.
A flag italiana e o novo logo Fiat também aparecem no interior do carro, que possui acabamento impecável e detalhes escurecidos.
Desenvolvido com parábolas duplas, ou seja, duas lâmpadas, uma para produzir a luz baixa e outra para produzir a luz alta, os faróis emitem um facho de luz amplo, garantindo uma viagem mais segura.
O único da categoria com personalização do teto, retrovisores e aerofólio. E exclusividade que não acaba.



------------------------------------------------------------5 - Hyundai HB20--------------------------------------------------

Preço: R$ 82.899 ou R$216,95/dia
Versão: Sense
Motor: 1.0 12V
O HB20 é um crossover baseado no HB20, dotado de mudanças estéticas em relação ao modelo original, contando também com suspensão e motorização diferenciada em relação à versão básica do HB20.

Dentre as principais diferenças, estão os para-choques dianteiros e traseiros redesenhados em material de coloração preta, vincos mais demarcados na carroceria, grade frontal diferenciada, desenhos exclusivos dos faróis de neblina e faróis com máscara negra misturada a detalhes cromado,
além de difusores de ar desenhados para dar um aspecto off-road aos parachoques traseiros.



------------------------------------------------------------6 - Renault Stepway--------------------------------------------------

Preço: R$ 83.999 ou R$306,95/dia
Versão: Zen 1.0
Motor: 1.0 12V
o Renault Stepway 1.0 une o melhor de dois mundos.
O carro que tem DNA versátil e aventureiro agora conta com o conforto, segurança e a economia do motor 1.0. 
Nada melhor do que dirigir um carro em que você pode confiar, já que ele faz sucesso no Brasil há anos.

O Stepway vem equipado com sensores de estacionamento traseiros. Você estaciona nas vagas mais desafiadoras com muito mais conforto e precisão. 
Tem faróis de neblina que ajudam o motorista a enxergar melhor em situações de chuva e névoa. 
E com abertura e fechamento das janelas em comandos simples e acionamento elétrico das travas das portas.
")

pags[1] <- ("
------------------------------------------------------------1 - Chevrolet Onix--------------------------------------------------

Preço: R$ 85.299 ou R$216,95/dia
Versão: 1.0
Motor: 1.0 12V
O Onix 2024 chega com atualizações que garantem ainda mais potência, desempenho e segurança para o queridinho do Brasil.
Viva uma nova rotina recheada de equipamentos e tecnologias de última geração, como o exclusivo Chevrolet MyLink. 
Pelo volante do Onix 2024 você controla a velocidade de cruzeiro e ainda ativa várias funções como atender ligações, trocar de música e alterar o volume.
Ele ainda tem muita tecnologia com câmera de ré com imagem projetada no MyLink e assistência de partida em aclive.Além de um design moderno que contempla rodas de liga leve de 16” e grade frontal com detalhes cromados,
o Onix 2024 te leva por qualquer caminho com muito estilo: os faróis dianteiros são tipo projetor e você ainda conta com luzes de condução diurna e lanternas em LED. 
O Onix 2024 vem com 6 airbags de série (2 frontais, 2 laterais e 2 de cortina) e controlador de limite de velocidade,
além do sensor crepuscular – que acende as luzes automaticamente – e da câmera de ré. A transmissão automática de 6 velocidades com engates leves e precisos.



------------------------------------------------------------2 - Volkswagen Polo Track--------------------------------------------------

Preço: R$ 86.399 ou R$151,01/dia
Versão: Track
Motor: 1.0 12V
Iluminação eficiente com design exclusivo.
Os projetores de LED proporcionam melhor iluminação à frente e contam com a luz de condução diurna, que auxilia a visualização durante o dia, além de ser um toque visual marcante.
A Volkswagen uniu tecnologia e praticidade para trazer a chave eletrônica de ignição. O Sistema Kessy abre o veículo sem a utilização da chave tradicional e aciona o motor ao toque de um botão.
Climatronic Touch
Escolha sua temperatura favorita e ela se ajusta automaticamente.
Aqui, conforto é para todos igualmente. O ar-condicionado Climatronic Touch permite que você selecione a temperatura mais agradável para os ocupante do veículo.
O ESC - Controle Eletrônico de Estabilidade evita a perda de estabilidade direcional em curvas ou mudanças repentinas de direção.
Ao detectar saída da trajetória determinada pelo volante, o motor e os freios atuam para trazer o veículo de volta à trajetória.
O dispositivo ainda oferece Bloqueio Eletrônico de Diferencial (XDS+), que corrige o torque na roda que está perdendo tração.



------------------------------------------------------------3 - Peugeot 208--------------------------------------------------

Preço: R$ 89.999 ou R$ 309,95/dia
Versão: Like
Motor: 1.0 6V
Usando o mesmo propulsor 1.0 Firefly do Argo, que entrega até 75 cv e 10,7 kgfm de torque, ele é associado ao câmbio manual de 5 marchas e está disponível nas versões Like e Style.
Com 4 airbags, multimídia de 10,3 polegadas com Android Auto e Apple CarPlay sem fio, luzes diurnas em LED, controle de tração e estabilidade, assistente em rampas, entre outros.



------------------------------------------------------------4 - Fiat Cronos--------------------------------------------------

Preço: R$90.299 ou R$295,95/dia
Versão: 1.0
Motor: 1.0 6V
O novo câmbio automático CVT de 7 velocidades oferece o máximo de prazer durante a condução. 
A mudança de velocidade ocorre sem a indesejável sensação de troca de marchas.
Além disso, você conta com uma maior eficiência, garantindo um baixo consumo de combustível.



------------------------------------------------------------5 - Aston Martin Vantage--------------------------------------------------

Preço - R$3.790.000 ou R$3.152,16/dia
V12 Vantage, o último carro da marca britânica a ter um motor de doze cilindros. É o mais poderoso Vantage já feito com um motor a combustão puro, usando um 5.2 V12 biturbo de 700 cv, melhorando a relação peso-potência em mais de 20m de comparação com a versão V8.
O esportivo pode ficar um pouco mais fácil de conviver no dia-a-dia com o opcional Comfort Package. Ele adiciona de volta parte do isoalmento acústico para reduzir o nível de ruído gerado.
Tem vários outros opcionais, como cobertura para o carro, tapete no porta-malas ou um conjunto de quatro malas no tamanho exato para o bagageiro do esportivo.


------------------------------------------------------------6 - Mercedes SLR 500--------------------------------------------------

Preço: R$325.000 ou R$12.936/dia
Cor Obsidian Black, Motor V8 com 388cv, Interior total couro bicolor Bege com Marrom, Acabamento em madeira, Bancos com ajuste elétrico, Aquecimento, Ventilação, Massagem, Pacote de Memória, Sistema de som Bose, 
Volante multifuncional em couro com acabamento em madeira, Paddle Shift, Capota com acionamento elétrico, Rodas aro 18 Cinza, Suspensão adaptativa.
")

pags[2] <- ("
------------------------------------------------------------1 - Nissan 350Z--------------------------------------------------
Preço - R$ 259.999 ou R$1.460/dia
Equipado com motor 3,5 litros V6 24 válvulas que produz 280 cv a 6.200 rpm e gera 37,0 kgfm a 4.800 rpm, o Z oferece uma das melhores performances entre os carros. 
O esportivo tem dois lugares, tração traseira, câmbio manual de 6 marchas com relações curtas da 1ª à 5ª, poderosos freios Brembo e posição de dirigir que, como consta no release de apresentação do carro, deve transmitir a sensação de se estar em um jato.
Sobre o ronco do 350Z eu já tinha ouvido falar.
Sobre suas características de perfomance também.

------------------------------------------------------------2 - Chevrolet Camaro--------------------------------------------------
Preço: R$ 379.999 ou R$1.295/dia
A cabine do Camaro está mais refinada. Traz avançados recursos, como painel customizável, Heads-up Display, multimídia Mylink com Android Auto e Apple Car Play, alto-falantes Bose, carregador wireless para smartphone, volante com aquecimento, bancos dianteiros com ventilação, 
ajuste elétrico e memória, ar-condicionado dual zone, partida remota da ignição, intensificador de som do motor para a cabine, que torna o ronco mais envolvente à medida que o giro do propulsor sobe. Uma experiência verdadeiramente única para entusiastas e fãs de superesportivos.
O cupê da Chevrolet adiciona ainda seletor de modo de condução (Drive Mode Selector), sistema de vetorização do torque, freios de alta performance Brembo com assistência de frenagem de urgência, alertas anti-distração, oito airbags,
pneus mais largos, teto solar, faróis de xenônio e lanternas com LEDs.

------------------------------------------------------------3 - Mazda 3--------------------------------------------------
Preço: R$ 259.999 ou R$337,92/dia
O modelo Mazda 3, oferece controle climático automático de zona dupla com bancos dianteiros aquecidos e este Hatchback mostra no painel, 
uma tela colorida de 8,8 polegadas onde está presente informações vitais sobre o veículo, Android Auto™ e Apple CarPlay e
com recursos de conectividade de smartphone padrão e todos fáceis de usar.
O sistema de áudio é um Bose de 12 alto-falantes disponível para uma experiência musical na cabine semelhante a um estúdio.

------------------------------------------------------------4 - Audi S3--------------------------------------------------
Preço: R$ 169.999 ou R$2.990/dia
O Audi S3 chegou 3 cm mais baixo e 1 cm mais comprido, além de rodas de 18 polegadas, logotipo S3 na grande de alumínio, soleiras das portas também em alumínio e rack de teto, conta-giros e volante.
No painel tem o nome “quattro”, os bancos com encosto de cabeça tem costura colorida.
Airbags laterais para motorista e passageiro, airbags de joelho para o motorista, faróis bi-xenônio, bancos de couro napa com a regulagem elétrica, sensor de estacionamento, volante em couro multifuncional,
borboletas para fazer troca de marchas, teto solar panorâmico, Bluetooth, sistema multimídia de navegação, sistema de som Bang & Olufsen e rádio MMI Plus.

------------------------------------------------------------5 - Mitsubishi Lancer--------------------------------------------------
Preço: R$ 75.999 ou R$208,24/dia
O Lancer também concilia características esportivas e de segurança. A estrutura da carroceria, por exemplo, é construída de acordo com o conceito “Rise” de deformação controlada, criada para absorver os impactos de uma eventual colisão.
 Além disso, as quatro portas contam com barras de proteção lateral, coluna de direção colapsável, cintos de segurança com pré-tensionadores e limitadores de força. Os freios são a disco nas quatro rodas e, além do ABS obrigatório,
também possui distribuidor de carga de frenagem (EBD) e assistente de emergência (BAS).
O Mitsubishi Lancer se destaca ainda em estabilidade, item relacionado tanto à segurança quanto ao desempenho. Contando com o avançado conjunto de suspensão independente nas quatro rodas (McPherson na dianteira e multilink atrás).

------------------------------------------------------------6 - Ferrari California--------------------------------------------------
Preço: R$ 1.999.999 ou R$3.332/dia
A Ferrari California vem com um pacote de manuseio especial (Handling Speciale Package), que oferece melhorias na aerodinâmica e no desempenho geral do carro. Isso inclui um novo sistema de escape esportivo, amortecedores atualizados e um sistema de controle de tração recalibrado.
Seu teto rígido dobrável se retrai em apenas 14 segundos. O teto é feito de alumínio e magnésio para manter o peso baixo e a rigidez alta. O carro também vem com vidros elétricos e um sistema de som premium. Ele vem com assentos esportivos elétricos com aquecimento e ventilação,
um sistema de navegação por satélite, e câmera de ré.

")

    // definindo carros
    carros[1] <- ("Fiat Mobi")
    carros[2] <- ("Renault Kwid")
    carros[3] <- ("Citröen C3")
    carros[4] <- ("Fiat Argo")
    carros[5] <- ("Hyundai HB20")
    carros[6] <- ("Renault Stepway")
    carros[7] <- ("Chevrolet Onix")
    carros[8] <- ("Volkswagen Polo Track")
    carros[9] <- ("Peugeot 208")
    carros[10] <- ("Fiat Cronos")
    carros[11] <- ("Aston Martin Vantage")
    carros[12] <- ("Mercedes SLR 500")
    carros[13] <- ("Nissan 350Z")
    carros[14] <- ("Chevrolet Camaro")
    carros[15] <- ("Mazda 3")
    carros[16] <- ("Audi S3")
    carros[17] <- ("Mitsubishi Lancer")
    carros[18] <- ("Ferrari California")

    // definindo preços
    compras[1] <- ("69.999")
    compras[2] <- ("71.199")
    compras[3] <- ("71.199")
    compras[4] <- ("80.999")
    compras[5] <- ("82.899")
    compras[6] <- ("83.999")
    compras[7] <- ("85.299")
    compras[8] <- ("86.399")
    compras[9] <- ("89.999")
    compras[10] <- ("90.299")
    compras[11] <- ("3790.000")
    compras[12] <- ("325.000")
    compras[13] <- ("259.990")
    compras[14] <- ("380.000")
    compras[15] <- ("259.990")
    compras[16] <- ("169900.000")
    compras[17] <- ("169900.000")
    compras[18] <- ("1999999.90")
    
    // alugueis
    alugueis[1] <- ("101.959")
    alugueis[2] <- ("101.959")
    alugueis[3] <- ("295.959")
    alugueis[4] <- ("196.959")
    alugueis[5] <- ("216.959")
    alugueis[6] <- ("306.959")
    alugueis[7] <- ("216.959")
    alugueis[8] <- ("151.019")
    alugueis[9] <- ("309.999")
    alugueis[10] <- ("295.959")
    alugueis[11] <- ("3.152.169")
    alugueis[12] <- ("12.936.00")
    alugueis[13] <- ("1.460")
    alugueis[14] <- ("1.295")
    alugueis[15] <- ("337.920")
    alugueis[16] <- ("2990.0")
    alugueis[17] <- ("208.240")
    alugueis[18] <- ("3332.00")

	// definindo detalhes
	detalhes[1] <- ("
        Faróis de neblina

        Rodas de liga leve 15'' diamantadas

        Câmera de ré

        Alarme perimétrico

        Bancos com encosto

        Abertura elétrica da tampa de combustível

        Banco do motorista com ajuste de altura

        Pencilholder
    ")
    detalhes[2] <- ("
        Faróis de neblina

        Rodas de liga leve 15'' diamantadas

        Câmera de ré

        Alarme perimétrico

        Bancos com encosto

        Abertura elétrica da tampa de combustível

        Banco do motorista com ajuste de altura

        Pencilholder
    ")
    detalhes[3] <- ("
        Faróis de neblina

        Rodas de liga leve 15'' diamantadas

        Câmera de ré

        Alarme perimétrico

        Bancos com encosto

        Abertura elétrica da tampa de combustível

        Banco do motorista com ajuste de altura

        Pencilholder
    ")
    detalhes[4] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio
    ")
    detalhes[5] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio
    ")
    detalhes[6] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio
    ")
    detalhes[7] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio
    ")
    detalhes[8] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio
    ")
    detalhes[9] <- ("
        Faróis de neblina

        Rodas de liga leve 15'' diamantadas

        Câmera de ré

        Alarme perimétrico

        Bancos com encosto

        Abertura elétrica da tampa de combustível

        Banco do motorista com ajuste de altura

        Pencilholder
    ")
    detalhes[10] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio
    ")
    detalhes[11] <- ("
        Airbag

        Ar quente

        Bancos dianteiros com aquecimento

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Controle automático de velocidade

        Retrovisores elétricos

        Sensor de estacionamento
    ")
    detalhes[12] <- ("
        Airbag

        Alarme

        Ar quente

        Bancos dianteiros com aquecimento

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Controle automático de velocidade

        Retrovisores elétricos

        Rodas de liga leve

        Sensor de chuva

        Sensor de estacionamento

        Retrovisor fotocrômico

        Travas elétricas

        Vidros elétricos

        Bancos em couro

        Farol de xenônio
    ")
    detalhes[13] <- ("
        Airbag

        Alarme

        Banco com regulagem de altura

        Freio ABS

        Travas elétricas
    ")
    detalhes[14] <- ("
        Airbag

        Ar quente

        Computador de bordo

        Desembaçador traseiro

        Ar condicionado

        Freio ABS

        Rádio

        Retrovisores elétricos

        Rodas de liga leve

        Sensor de estacionamento

        Travas elétricas

        Vidros elétricos

        Bancos em couro

        Direção hidráulica
    ")
    detalhes[15] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Desembaçador traseiro

        Ar condicionado

        Rodas de liga leve

        Travas elétricas

        Vidros elétricos

        Direção hidráulica
    ")
    detalhes[16] <- ("
        Alarme

        Controle de tração

        Ar condicionado

        Freio ABS

        Controle automático de velocidade

        Retrovisores elétricos

        Rodas de liga leve

        Sensor de estacionamento

        Teto solar

        Retrovisor fotocrômico

        Vidros elétricos

        Bancos em couro

        Tração 4x4

        GPS
    ")
    detalhes[17] <- ("
        Airbag

        Alarme

        Ar quente

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Desembaçador traseiro

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Protetor de caçamba

        Controle automático de velocidade

        Rádio

        Retrovisores elétricos

        Rodas de liga leve

        Sensor de chuva

        Sensor de estacionamento

        Retrovisor fotocrômico

        Rádio e toca fitas

        Travas elétricas

        Vidros elétricos

        Volante com regulagem de altura

        Disqueteira

        Bancos em couro

        Tração 4x4

        Direção hidráulica

        GPS
    ")
    detalhes[18] <- ("
        Airbag

        Alarme

        Ar quente

        Bancos dianteiros com aquecimento

        Banco com regulagem de altura

        Computador de bordo

        Controle de tração

        Ar condicionado

        Encosto de cabeça traseiro

        Freio ABS

        Controle automático de velocidade

        Retrovisores elétricos

        Rodas de liga leve

        Sensor de chuva

        Sensor de estacionamento

        Retrovisor fotocrômico

        Travas elétricas

        Vidros elétricos

        Bancos em couro

        Farol de xenônio
    ")

    unidades[0] <- ("Av. Amazonas, 471, Centro")
    unidades[1] <- ("Rua Rio de Janeiro, 471, Centro")
    unidades[2] <- ("Rua do Careca, 471, Centro")
    horarios[0] <- ("11:00")
    horarios[1] <- ("13:00")
    horarios[2] <- ("15:00")

	// qrcode
	qrcode <- ("
		                                                                 
					=################:      -######+  *#=  ##: .################=  
					+@@============@@:    ++#@@==%@%++@@+  @@- :@@+===========%@*  
					+@%  :------. .@@:    +***+  *@%**@@+  @@- :@@. .-------  %@*  
					+@%  #@@@@@@= .@@:  ..       +%*..%@+  @@- :@@. =@@@@@@%  %@*  
					+@%  #@@@@@@= .@@: -@@         :@@@@+  @@- :@@. =@@@@@@%  %@*  
					+@%  #@@@@@@= .@@: -@@@@=  @@-    %@+  @@- :@@. =@@@@@@%  %@*  
					+@%  .::::::. .@@:  ::::.  ::+####-:.  @@- :@@.  ::::::.  %@*  
					+@@+++++++++++*@@: .++  :++  *@%==++-  @@- :@@*+++++++++++@@*  
					-****************. :**  +@@  *@#  +*+--@@- .****************=  
					....        .......  ..+%#..*%*....=%%%%-       ....          
					+@@@@:      +@@@@@@*  @@=  @@- :@@@@+           =@@@@-         
					=#*  +#%@@-:::-##-:=@@-:+#*    :##. =@@@@+:-##@@*::@@+:-@@%#=  
					:==  -====     ==+++==++===  -++==  :==@@- .====:  @@-  ==%@*  
						--     --.  --%@#--@@=  --+*+--  .--@@+----     **:    %@*  
					.:@@-.   @@+.:%%%%%%%@@=  @@=.-%%. =@@@@@%%%%:.        ..#%+  
					+@@@@@@*  @@@@%       @@=  @@@@#    =@@@@-    %@+      .@@. 
					+@@@@:      +@@@@@@*  @@=  @@- :@@@@+           =@@@@-         
					+@%  #@*  @@@@@@@: :@@.           #@@@@@@@@#  %@@@@@@- .@@@@+  
					................  -@@@@@@@@@-  ..#%=  @@-  ..  =@@        .   
					+@@@@@@@@@@@@@@@@: -@@@@@@@@@- :@@.    @@- :@@. =@@       %@*  
					+@%           .@@: -@@@@+ .@@@@*  #@@@@@@-      =@@    .@@@@*  
					+@%  +######- .@@:  ::::+##@@@@#  %@@@@@@%######%@@  =##@@=:.  
					+@%  #@@@@@@= .@@:    =+=======-  ==#@@@@@@@@@+====  -=+@@*+-  
					+@%  #@@@@@@= .@@:    *#=::  .::    =@@##%@@##.    ::::-##@@*  
					+@%  *@@@@@@= .@@:      =@%  *@#    =@%. +@#      .%@@@#  %@*  
					+@%           .@@: -@@     @@@@#       @@- :@@@@@@@       %@*  
					+@@@@@@@@@@@@@@@@: -@@@@=  @@=    #@=  @@@@@@@:   .@@-    %@*  
					.----------------  .----.  --.    :-.  -------     --.    :-:   
	")

    escreval("
        
                                .~7JJJYPPP5YJJYPPP5YJJYYJ7~.           
                              ^?5Y!::7YJ7~^^!?Y?~:.    .:~?Y?^         
                            :J5JJ!.!Y?:.~7YPY~.     ^!~^:  .!YJ:       
                           !PJ:  :YY: . .?5!.       ^!!?JJ7:  757      
                          ?PYJ?.~P7.!JJJ55:        .     :!YJ: ^5?     
                         ?P^ . ~P7    :55:      ^7JJ55Y?7: .75! :5?    
                        !GY??::P? 7???YP:     ^JY!:7P55^!YJ: ~P7 ^P!   
                       .5?.:: J5. ...7G!     7P!  :5?^P!  7P! ^P! 7P:  
                       7G?!!.^P!.!!!!Y5.    7P^  ~5?  ~P?. ~P! 7P:.P7  
                      .5Y^~~ 7P:.^~~!G7    ^PY~7YJ~:~~::?Y?!YP:.5? ?5. 
                      :PJ^^: YY ^^^^7P~    ?GJ!~:.?Y77Y?..^~7P7 ?5.!P: 
                      ^PJ!7^ 5J ~77!JP^ :. Y5Y?. 7P:  :P7  !YPY 7G:^P^ 
                      ^P!... 5J ....7P::P! 5J.YY.J5.  .5J !P~JY :7.^P^ 
                      :PY??! YY !???YP^.P7 JY :P7^5?::?5^:P! 5J    !P: 
                      .YJ    7P:    :P7 YY ~P^ JY :7??7: 7P.~P~    ?5. 
                       7PJ?J:^P!.?JJJ55 ~P^ J5.?5        7P^5J    .P7  
                       .PJ..  J5.... ~P! J5..YY5J:7JJ???~~PPJ.    7P:  
                        !P???^:P? ~???PP:.5J..?P55!:...~Y557.    ^P!   
                         ?P!:. ~P7.^:::YY..YY: :7Y?7!!7?J7:     :5?    
                          ?57!!:~P7 :!!7G5: 757.  :^~~^:       ^5?     
                           !P5!: ^YJ^^~~!J5! .7YJ!^:..       .75!      
                            :?Y!^^:75?:  .?GY~  ^!??J!     .!YJ:       
                              ^?5PJ^^7YJ7~~7J5Y?~:.    .:~?Y?^         
                                .^7JJJYPPP5YJY5PPP5YJJYJJ7~.                             
    ")
    escreval("      Esse é o Mão Na Roda!")
    escreval("      Para Consultarmos em nossos bancos, escreva seu nome: ")
    leia(nome)
    escreval("      Seu email: ")
    leia(email)
	escreval("      Agora Entre o Seu CPF: ")
	leia(cpf)
	escreval("      Bem-vindo(a) " + nome + "!")
    pontos <- randi(50,500)
    indiceAG <- randi(2)
    desconto <- 0
    repita
        escreval("      O que deseja acessar?")
        escreval("
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |1|-| Meus pontos                         |"+"   Valor: "+carrinho+"R$ ou "+carrinhoAL+"R$/dia
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |2|-| Comprar / Alugar                    |    Carro: "+selecionado+"
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |3|-| Quem Somos                          |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |4|-| Dúvidas Frequentes                  |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |5|-| Fale Conosco                        |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |6|-| Sair                                |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
            ")
        leia(opt)

        escolha(opt)
			caso 1
                se (pontos = 0) entao
                    escreval("      Você não possui pontos de Desconto!")
                senao
                    desconto <- (pontos*120+30)
                    escreval("      Você possui "+pontos+" pontos que podem ser trocados por "+(desconto)+"R$ de Desconto!")
                    escreval("      Deseja aplicá-lo ao seu carrinho? [S/N]")
                    leia(escolhas)
                    se (escolhas = "s") ou (escolhas = "S") entao
                        carrinho <- carrinho - (desconto)
                        escreval("      Cupom aplicado! Você está economizando "+(desconto)+"R$!")
                        desconto <- 0
                    fimse
                fimse

            caso 2
                limpartela()
                pag <- 0
                repita
                    escreval("      Nossas opções: ")
                    escreval(pags[pag])
                    se (pag = 0) entao
                        escreval("
						[8] Próxima Página | [9] Sair
						")
                    fimse
                    se (pag = 1) entao
                        escreval("
						[7] Página anterior | [8] Próxima Página | [9] Sair
						")
                    fimse
                    se (pag = 2) entao
                        escreval("
						[7] Página anterior | [9] Sair
						")
                    fimse
                    leia(opt)

                    se (pag = 0) e (opt = 8) entao
                        pag <- 1
                    senao
                        se (pag = 1) e (opt = 7) entao
                            pag <- 0
                        senao
                            se (opt = 8) entao
                                pag <- 2
                            senao
                                se (pag = 2) e (opt = 7) entao
                                    pag <- 1
                                senao
                                    // se as opçoes foram carros, define o indice pra pegar o carro selecionado
                                    se (opt = 1) ou (opt = 2) ou (opt = 3) ou (opt = 4) ou (opt = 5) ou (opt = 6) entao
                                        indice <- (pag+1)*opt
                                        carro <- ("     Você Selecionou " + carros[indice] + " Por " +(compras[indice])+ "R$ ou " +(alugueis[indice])+"R$ por dia.")
                                        selecionado <- carros[indice]
                                        carrinho <- caracpnum(compras[indice])*1000 - desconto
                                        carrinhoAL <- (caracpnum(alugueis[indice]) - desconto)
                                    senao
                                        carro <- ("     Opção Inválida.")
                                    fimse
                                fimse
                            fimse
                        fimse
                    fimse
                    limpartela()
					se (carro = "     Opção Inválida.") ou (opt = 7) ou (opt = 8) ou (opt = 9) entao
						escreval("")
					senao
						escreval(carro + "      Deseja saber mais detalhes? [S/N]")
						leia(escolhas)
						se (escolhas = "S") ou (escolhas = "s") entao 
							escreval("      O Carro selecionado conta Com: " + detalhes[indice])
						fimse
                        escreval("
                        [1] Comprar | [2] Alugar | [3] Voltar
                        ")
                        leia(opt)
                        escolha(opt)
							caso 1
								limpartela()
								escreval("
                                  .oooooo.
                                 d8P'  `Y8b
                                888           .ooooo.  ooo. .oo.  .oo.   oo.ooooo.  oooo d8b  .oooo.
                                888          d88' `88b `888P Y88b  Y88b   888' `88b `888  8P `P  88b
                                888          888   888  888   888   888   888   888  888      .oP-888
                                `88b    ooo  888   888  888   888   888   888   888  888     d8    888
                                 `Y8bood8P'  `Y8bod8P' o888o o888o o888o  888bod8P' d888b    `Y888988o
                                                                          888
                                                                         o888o
                    				")
                                escreval("

                                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                    |            Método de Pagamento          |
                                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                    |1|-| Financiamento (Agendamento)         |
                                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                    |2|-| Consórcio (Agendamento)             |
                                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                    |3|-| Sair                                |
                                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

                                ")
                                leia(opt)
                                escolha(opt)
                                    caso 1
                                        limpartela()
                                        escreval("      Entre com sua unidade federal: Ex: MG")
                                        leia(dados[0])
                                        escreval("      Entre com seu CEP: ")
                                        leia(dados[1])
                                        escreval("      Agendado com sucesso para: "+unidades[indiceAG]+" as "+horarios[indiceAG]+" horas.")
                                    caso 2
                                        limpartela()
                                        escreval("      Entre com o número de sua agência: ")
                                        leia(dados[0])
                                        escreval("      Entre com sua unidade federal: Ex: MG")
                                        leia(dados[0])
                                        escreval("      Entre com seu CEP: ")
                                        leia(dados[1])
                                        escreval("      Agendado com sucesso para: "+unidades[indiceAG]+" as "+horarios[indiceAG]+" horas.")
                                    caso 3
                                    outrocaso
                                        escreval("      Opção Inválida.")
                                fimescolha
							caso 2
                                limpartela()
                                escreval("      O carro será alugado em quantos dias?")
                                leia(dias)
                                escreval("      O valor total será de: " +(dias*carrinhoAL)+"R$")
                                escreval("
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                                |            Método de Pagamento          |
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                                |1|-| Pix                                 |
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                                |2|-| Cartão de Crédito                   |
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                                |3|-| Cartão de Débito                    |
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                                |4|-| Boleto                              |
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                                |5|-| Sair                                |
                                                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                                        ")
                                    leia(opt)
                                    escolha(opt)
                                    caso 1
                                        limpartela()
                                        escreval(qrcode)
                                        escreval("      Pix gerado! O valor só será aceito pelo CPF do comprador.")
                                    caso 2
                                        limpartela()
                                        escreval("      Entre com o número do cartão: ")
                                        leia(dados[0])
                                        escreval("      Nome do Titular: ")
                                        leia(dados[1])
                                        escreval("      Código de Segurança: ")
                                        leia(dados[2])
                                        limpartela()
                                        escreval("      Processando....")
                                        escreval("      Compra Realizada!")
                                        escreval(qrcode)
                                        escreval("      Retire seu carro em uma de nossas unidades utilizando o QRcode gerado ou requisite a entrega pelo nosso SAC.")
                                    caso 3
                                        limpartela()
                                        escreval("      Entre com o número do cartão: ")
                                        leia(dados[0])
                                        escreval("      Nome do Titular: ")
                                        leia(dados[1])
                                        escreval("      Código de Segurança: ")
                                        leia(dados[2])
                                        limpartela()
                                        escreval("      Processando....")
                                        escreval("      Compra Realizada!")
                                        escreval(qrcode)
                                        escreval("      Retire seu carro em uma de nossas unidades utilizando o QRcode gerado ou requisite a entrega (Premium) pelo nosso SAC.")
                                    caso 4
                                        limpartela()
                                        escreval("      Boleto enviado! Fique de olho no seu email ("+email+").")
                                    outrocaso
                                    limpartela()
                                    escreval("      Opção Inválida.")
                                fimescolha
							caso 3
                                limpartela()
                                escreval("      Entre com o número do cartão: ")
                                leia(dados[0])
                                escreval("      Nome do Titular: ")
                                leia(dados[1])
                                escreval("      Código de Segurança: ")
                                leia(dados[2])
                                limpartela()
                                escreval("      Processando....")
                                escreval("      Compra Realizada!")
                                escreval(qrcode)
                                escreval("      Retire seu carro em uma de nossas unidades utilizando o QRcode gerado ou requisite a entrega (Premium) pelo nosso SAC.")
							outrocaso
								escreval("      Opção Inválida.")
                        fimescolha
					fimse
                    se (indice > 10) entao
                        escreval("      Visualize seu carro em: https://carvisualizer.plus360degrees.com/threejs/")
                    fimse
                    se (opt <> 7) e (opt <> 8) e (opt <> 9) entao
                        escreval("      Aperte qualquer tecla para continuar.")
                        leia(dados[3])
                    fimse
                ate(opt = 9)
            caso 3
                limpartela()
                escreval("
                Somos umas das maiores empresas de mobilidade da América Latina, contamos com colaboradores práticos e 
                atendimento humanizado, nossa plataforma de atendimento contém formas 
                fáceis e claras para o entedimento do cliente, contamos com atendimento personalizado de acordo com o
                cliente e a sua demanda.
                Estamos á 20 anos no mercado gerando boas memórias um serviço prático e seguro.
                ")
			caso 4
                limpartela()
                repita
                    escreval("
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |1|-| Como funciona o nosso parcelamento?                                |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |2|-| Como funciona a entrega e seu valor?                               |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |3|-| Como saber qual melhor carro pra minha viagem?                     |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |4|-| Em caso de roubo o que devo fazer?                                 |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |5|-| Acidente com carro, e agora?                                       |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |6|-| Como funciona a fidelidade                                         |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |7|-| Passei do tempo de entrega do meu automóvel o que fazer?           |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |8|-| Como funciona os pontos acumulados?                                |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |9|-| Seguro e proteção do carro                                         |
                    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    |10|-| Sair                                                              |
                    +-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    ")
                    leia(opt)
                    escolha(opt)
                        caso 1
                            limpartela()
                            escreval ("     Locação de pessoa fisica pode ser parcelado em ate 10x sem juros em alugueis a cima de 29 dias, menores que 30 diasparcelamos em ate 5x. 
                            Com pessoas juridicas parcelamos ate 6x sem juros ")
                        caso 2
                            limpartela()
                            escreval("      Nossa entrega funciona com agendamento de dia e horário. Enviamos nosso caminhão cegonha com mais 4 funcionários para sua segurança e praticidade. O valor depende da sua localidade; consulte no app ou em nosso WhatsApp.")
                        caso 3
                            limpartela() 
                            escreval("      Nossa locadora conta com funcionários capacitados para solucionar o seu problema. Nos chame no app ou no WhatsApp, que encaminharemos a melhor solução!")
                        caso 4
                            limpartela()
                            escreval("      Em caso de roubo, nos contate o mais rápido possível para que possamos acionar nossa trava de segurança.
                            Ela trava o carro e suas portas, assim o criminoso não consegue sair e você fica em segurança.")
                        caso 5
                            limpartela()
                            escreval("      Se você for nosso cliente que conta com o seguro, nos contate em até 24h e faça um boletim de ocorrência. Em caso de acidente por alcoolismo, nosso seguro não cobre.
                            Em acidentes em que o cliente não utiliza nosso seguro, faça o boletim de ocorrência, e analisaremos as condições.")
                        caso 6
                            limpartela() 
                            escreval("      Nossa fidelidade ocorre quando o cliente solicita aluguéis a partir de 5 meses, podendo diminuir o valor da diária e aumentar os benefícios.")
                        caso 7
                            limpartela()
                            escreval("      Entre em contato conosco caso queira prorrogar a sua diária.
                            Em caso de atraso de entrega, nos contate para avaliarmos o seu caso, podendo conter alterações no preço final.")
                        caso 8
                            limpartela() 
                            escreval("      Pontos acumulados podem ser trocados por diária gratuita. A cada aluguel, você recebe uma quantidade de pontos, podendo variar de acordo com o produto.")
                        caso 9
                            limpartela()
                            escreval("      Nosso seguro para menos de 29 dias é cobrado a diária de R$12,99. Mensalmente, a diária fica por R$4,99.")
                        caso 10
                            limpartela()
                        outrocaso
                            escreval("      Opção Inválida.")
                    fimescolha
                ate(opt = 10)
            caso 5 
                limpartela()
                escreval("
                            .d8888b.         d8888  .d8888b.
                           d88P  Y88b       d88888 d88P  Y88b
                           Y88b.           d88P888 888    888
                           .Y888b.        d88P 888 888
                               .Y88b.    d88P  888 888
                                 .888   d88P   888 888    888
                           Y88b  d88P  d8888888888 Y88b  d88P
                           .Y8888P.  d88P     888  .Y8888P.

                ")
                repita
                    escreval("
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |1|-| Não consigo alugar um veículo                   |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |2|-| Quero negociar um aluguel                       |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |3|-| Como fazer um contrato                          |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |4|-| Falar com Atendente                             |
                        +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |5|-| Agendar Atendimento                             |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |6|-| Outros                                          |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |7|-| Contato                                         |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |8|-| Entrega de veículo                              |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                        |9|-| Encerrrar atendimento                           |
                        +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                    ")
                    leia(opt)
                    escolha (opt)
                    caso 1
                        limpartela()
                        escreval ("     Podemos te ajudar a finalizar um aluguel, através do contato (31) 4002-8922.")
                    caso 2
                        limpartela()
                        escreval("     Ficamos felizes que tenha interesse em nossos serviços. Em qual número podemos entrar em contato? ")
                        leia(dados[3])
                        escreval("      Entraremos em contato dentro de até 12 horas! Fique atento.")
                    caso 3
                        limpartela()
                        escreval("      Podemos te ajudar com detalhes do contrato e como finaliza-lo, agende um atendimento ou nos ligue em 31 4002-8922.")
                    caso 4
                        limpartela()
                        escreval ("     Fique na linha, em breve um de nossos atendentes irá auxiliá-lo.")
                        escreval("      Conectando...")
                        escreval("      Aperte qualquer tecla para cancelar a qualquer momento.")
                        leia(dados[3])
                    caso 5
                        limpartela()
                        escreval("      Temos os seguintes horários disponíveis na unidade mais próxima de você: ")
                        escreval("      |1|-| " +unidades[indiceAG]+" as "+horarios[0]+" horas.")
                        escreval("      |2|-| " +unidades[indiceAG]+" as "+horarios[1]+" horas.")
                        leia(opt)
                        escolha(opt)
                        caso 1
                            escreval("      Horário marcado! compareça na unidade "+unidades[indiceAG]+" as "+horarios[0]+" horas.")
                        caso 2
                            escreval("      Horário marcado! compareça na unidade "+unidades[indiceAG]+" as "+horarios[1]+" horas.")
                        outrocaso
                            escreval("      Opção inválida.")
                        fimescolha
                    caso 6
                        limpartela()
                        escreval("      Para outros assuntos, nos contate através do número (31) 4002-8922.")
                    caso 7 
                        limpartela()
                        escreval("      Email: maonaroda2003@gmail.com | Telefone: (31) 4002-8922")
                    caso 8
                        limpartela()
                        escreval("      Deseja receber o seu veículo em sua residência? Deixe aqui o seu contato e iremos agilizar o processo: ")
                        leia(dados[3])
                        escreval("      Entraremos em contato em breve!")
                    caso 9
                    fimescolha
                ate(opt = 9)
            caso 6
                limpartela()
                escreval("      Saindo...")
            outrocaso
                limpartela()
                escreval("      Opção Inválida.")
        fimescolha
    ate(opt = 6)
fimalgoritmo