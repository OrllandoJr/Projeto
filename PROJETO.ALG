Algoritmo "PROJETO_CALCULO"
// Disciplina  : [Linguagem de Programação Orientada à Objeto]
// Professor   : Aldo Henrique
// Descrição   : Programa de calculadora com diversas funções.
// Autor(a)    : Orlando Freitas de Araujo Junior
// CPD         : 41443
Var
   // Seção de Declarações das variáveis
   opcao, nP, contador, contador_A, contador_B, idade, sM, sF, n, i,aux: Inteiro
   n1, n2, AB, A, B: Real
   sexo, base, x,d: caracter
Inicio
   // Função para repetir o menu e limpar a tela.
   Repita
      Limpatela
      // Atribuição do valor 0 às variáveis, para não armazenarem valores.
      contador <- 0
      contador_A <- 0
      contador_B <- 0
      idade <- 0
      sM <- 0
      n <- 0
      x <- ""
      aux <- 0
      b <- 0
      I <- 0
      nP <- 0
      n1 <- 0
      n2 <- 0
      sF <- 0
      A <- 0
      AB <- 0
      // Seção do Menu principal
      Escreval ("-------MENU-------")
      Escreval ("")
      Escreval ("1. Soma")
      Escreval ("2. Subtração")
      Escreval ("3. Divisão")
      Escreval ("4. Faixa etária")
      Escreval ("5. Números primos")
      Escreval ("6. Mudança de base")
      Escreval ("7. Sair")
      Escreval ("")
      Escreval ("------------------")
      Escreval ("")
      Escreval ("Escolha uma opção de 1 a 7:")
      leia (opcao)
      // Função LIMPATELA para limpar a Tela ao entrar em uma opção do MENU.
      limpatela
      ESCOLHA (opcao)
      // Primeira OPÇÃO, denominada SOMA
      Caso 1
         Escreval ("Você deseja fazer uma SOMA de dois números!")
         Escreval ("Digite o primeiro número:") //Pede um valor ao usuário
         leia (n1)
         Escreval ("Digite o segundo número:")  //Pede outro valor ao usuário
         leia (n2)
         A <- n1 + n2       //Atribui a var "A" a soma de n1+n2
         Escreval ("O resultado da SOMA é:",A)   //Imprime o resultado da soma
         Escreval ("")
         Escreval  ("Tecle ENTER para voltar ao MENU") //pede um comando ao usuário para continuar ou parar
         Escreval ("Ou digite 7 para Sair!")
      //Segunda OPÇÃO do menu, denominada SUBTRAÇÃO
      Caso 2
         Escreval ("Você deseja fazer uma SUBTRAÇÃO de dois números!")
         Escreval ("Digite o primeiro número:")
         leia (n1)
         Escreval ("Digite o segundo número:")
         leia (n2)
         A <- n1 - n2 //Atribui a var "A" o valor da subtração de n1-n2
         Escreval ("O resultado da SUBTRAÇÃO é:",A) //Imprime o resultado
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Terceira OPÇÃO do menu, denominada DIVISÃO
      Caso 3
         Escreval ("Você deseja fazer uma DIVISÃO de dois números!")
         Escreval ("Digite o dividendo:") //Usuário digita o numero que irá ser dividido
         leia (n1)
         Escreval ("Digite o divisor:") //usuário digita o divisor
         leia (n2)
         Se n2 = 0 entao  //Se o usuário digitar "0" será imprimido INVALIDO
            repita        //Imprimirá NUMERO INVALIDO enquanto o usuário digitar "0"
               Escreval ("Número Invalido!")
               Escreval ("")
               Escreval ("Digite o segundo número:")
               leia (n2)
            ate n2 <> 0  //Se o usuário digitar um valor diferente de "0", o codigo continua
         fimse
         A <- n1 / n2  //Atribui à var "A" o n1 dividido por n2
         Escreval ("O resultado da DIVISÃO é:",A)   //Imprime o resultado da divisão
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Quarta OPÇÃO do menu, denominada FAIXA ETÁRIA
      Caso 4
         contador <- 1  //Atribuir o valor 1 à var "contador"
         Escreval ("Você deseja calcular a faixa etária!")
         Escreval ("Digite a quantidade de pessoas:") //o usuário digita a quantidade de pessoas
         leia (nP)
         Enquanto (contador <= nP) faca //Repetir até contador ser maior que nP
            Escreval ("Digite a idade da pessoa ", contador,":")
            leia (idade)
            Repita
               Escreval ("Escolha o SEXO")   //Pede que o usuário digite a letra correspondende ao sexo
               Escreval ("(M) Masculino")
               Escreval ("(F) Feminino")
               leia (sexo)
            ate (sexo = "m") ou (sexo = "f") //Pede o sexo ao usuário até que o usuário digite a caracter M ou F
            Se (sexo = "m") entao
               sM <- sM + idade  //Soma a idade com a var(sM) caso o usuário digite a letra "M"
               contador_A <- contador_A + 1   //"contador_A" conta a quantidade de pessoas do sexo masculino
               A <- sM / contador_A   //divide a idade de todos do sexo masculino pela quantidade
            senao
               Se (sexo = "f") entao
                  sF <- sF + idade  //Soma a idade com a var(sF) para armazenar a soma de todas pessoas do sexo feminino
                  contador_B <- contador_B + 1  //conta a quantidade de pessoas do sexo feminino
                  B <- sF / contador_B  //divide a idade de todos do sexo femino pelo contador feminino
               Fimse
            Fimse
            AB <- (sM + sF) / contador  //soma as idades dos dois sexos, e divide pelo contador geral
            contador <- contador + 1  //"contador" conta o total de pessoas
         FimEnquanto
         Escreval ("A média de idade das pessoas é: ",AB)
         Escreval ("A média de idade das pessoas de sexo MASCULINO é: ",A)
         Escreval ("A média de idade das pessoas de sexo FEMININO é: ",B)
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Quinta OPÇÃO do menu, denominada NÚMEROS PRIMOS
      Caso 5
         Escreval ("Você deseja saber os números primos de 1 até o número desejado!")
         Escreval ("Digite um número: ")
         Leia(n)
         para nP de 1 ate n faca  //Laço em nP de 1 até o numero digitado pelo usuário
            contador <- 0
            para i de 1 ate nP faca
               Se nP mod i = 0 entao //Se o resto de nP/i for 0, soma 1 ao contador
                  contador <- contador + 1
               Fimse
            Fimpara
            Se contador = 2 entao   //Se o contador for 2 o numero é primo, caso contrário o numero não é primo
               Escreval ("São números primos: ",nP) //mostra os numeros primos
               A <- A + nP
            Fimse //Volta pro Laço de nP
         Fimpara
         Escreval ("")
         Escreval ("A soma desses números primos é ",A) //resultado da soma dos numeros primos
         Escreval ("")
         Escreval  ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Sexta OPÇÃO do menu, denominada MUDANÇA DE BASE
      Caso 6
         Escreval ("Você deseja fazer uma Mudança de Base!")
         Escreval ("Digite um número:")  //Usuário digitará um valor, seja ele binário ou decimal
         leia (n)
         Repita  //Repetirá a msg até q o usuário digite uma das caracteres pedidas
            Escreval ("Digite (D) caso o nº informado for DECIMAL ou (B) se for BINÁRIO:") //Usuário informará se o valor digitado é Binário ou decimal
            leia (base)
         ate (base="D") ou (base="B")
         Se ( base = "D" ) entao   //Entra nesse Se, se o usuário digitar a letra D
            i <- n   //Armazena o valor informado pelo usuário na var I
            Enquanto i > 0 faca      //Executar os Se seguintes até i=0
               Se (i mod 2) = 0 entao   //--Se o resto de i/2 for =0,
                  x <- "0" + x          //atribui a caracter "0" à var x.
               senao                    //--Se o resto de i/2 for =1,
                  x <- "1" + x          //atribui a caracter "1" à var x.
               fimse
               i <- i div 2  //Atribui à var "i" o resultado da divisão de i por 2
            fimenquanto   //Quando i=0 ele sai do laço ENQUANTO
            Escreval ("O número ",n,", em binário é ",x)  //Imprime o numero informado e o binario do numero
         fimse
         se (base = "B") entao //Entra nesse Se, se o usuário digitar B
            x <- (numpcarac(n)) //transforma o numero(inteiro) digitado para caracter e armazena na var x
            i <- compr(x) //Lê a quantidade de caracteres da var x, e armazena a quantidade na var i
            n1<-n
            Para aux de 1 ate i faca //Laça a var (aux) para ir de 1 até i(quantidade de digitos da var(x))
               a <- n1 mod 10
               a <- a*(2^contador) //"contador" representa o expoente da potência; "a" representa o ultimo digito do valor que o usuário digitou.
               b <- b + a
               n1 <- n1/10   //Divide n1 por 10, para tirar o ultimo digito de n1 (ex.: 1010 depois fica 101)
               contador <- contador + 1
               aux <- aux + 1
            fimpara
            Escreval ("")
            Escreval ("O valor",n," em decimal é",b)   //mostra o resultado
         fimse
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")

      Caso 7
         escreval ("OBRIGADO POR USAR O PROGRAMA!")    //uma "deixa" para sair
         escreval ("Volte sempre!")
         interrompa

      outrocaso  //caso o usuário digite um valor que nao tenha CASO
         Escreval ("")
         escreval ("OPÇÃO INVALIDA!")
         escreval ("Tecle ENTER para voltar ao MENU!")
         Escreval ("Ou digite 7 para Sair!")

FIMESCOLHA
LEIA (opcao)
ATE (opcao) = 7  //ficar no programa até o usuário digitar "7"
Fimalgoritmo