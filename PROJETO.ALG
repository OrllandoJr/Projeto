Algoritmo "PROJETO_CALCULO"
// Disciplina  : [Linguagem de Programa��o Orientada � Objeto]
// Professor   : Aldo Henrique
// Descri��o   : Programa de calculadora com diversas fun��es.
// Autor(a)    : Orlando Freitas de Araujo Junior
// CPD         : 41443
Var
   // Se��o de Declara��es das vari�veis
   opcao, nP, contador, contador_A, contador_B, idade, sM, sF, n, i,aux: Inteiro
   n1, n2, AB, A, B: Real
   sexo, base, x,d: caracter
Inicio
   // Fun��o para repetir o menu e limpar a tela.
   Repita
      Limpatela
      // Atribui��o do valor 0 �s vari�veis, para n�o armazenarem valores.
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
      // Se��o do Menu principal
      Escreval ("-------MENU-------")
      Escreval ("")
      Escreval ("1. Soma")
      Escreval ("2. Subtra��o")
      Escreval ("3. Divis�o")
      Escreval ("4. Faixa et�ria")
      Escreval ("5. N�meros primos")
      Escreval ("6. Mudan�a de base")
      Escreval ("7. Sair")
      Escreval ("")
      Escreval ("------------------")
      Escreval ("")
      Escreval ("Escolha uma op��o de 1 a 7:")
      leia (opcao)
      // Fun��o LIMPATELA para limpar a Tela ao entrar em uma op��o do MENU.
      limpatela
      ESCOLHA (opcao)
      // Primeira OP��O, denominada SOMA
      Caso 1
         Escreval ("Voc� deseja fazer uma SOMA de dois n�meros!")
         Escreval ("Digite o primeiro n�mero:") //Pede um valor ao usu�rio
         leia (n1)
         Escreval ("Digite o segundo n�mero:")  //Pede outro valor ao usu�rio
         leia (n2)
         A <- n1 + n2       //Atribui a var "A" a soma de n1+n2
         Escreval ("O resultado da SOMA �:",A)   //Imprime o resultado da soma
         Escreval ("")
         Escreval  ("Tecle ENTER para voltar ao MENU") //pede um comando ao usu�rio para continuar ou parar
         Escreval ("Ou digite 7 para Sair!")
      //Segunda OP��O do menu, denominada SUBTRA��O
      Caso 2
         Escreval ("Voc� deseja fazer uma SUBTRA��O de dois n�meros!")
         Escreval ("Digite o primeiro n�mero:")
         leia (n1)
         Escreval ("Digite o segundo n�mero:")
         leia (n2)
         A <- n1 - n2 //Atribui a var "A" o valor da subtra��o de n1-n2
         Escreval ("O resultado da SUBTRA��O �:",A) //Imprime o resultado
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Terceira OP��O do menu, denominada DIVIS�O
      Caso 3
         Escreval ("Voc� deseja fazer uma DIVIS�O de dois n�meros!")
         Escreval ("Digite o dividendo:") //Usu�rio digita o numero que ir� ser dividido
         leia (n1)
         Escreval ("Digite o divisor:") //usu�rio digita o divisor
         leia (n2)
         Se n2 = 0 entao  //Se o usu�rio digitar "0" ser� imprimido INVALIDO
            repita        //Imprimir� NUMERO INVALIDO enquanto o usu�rio digitar "0"
               Escreval ("N�mero Invalido!")
               Escreval ("")
               Escreval ("Digite o segundo n�mero:")
               leia (n2)
            ate n2 <> 0  //Se o usu�rio digitar um valor diferente de "0", o codigo continua
         fimse
         A <- n1 / n2  //Atribui � var "A" o n1 dividido por n2
         Escreval ("O resultado da DIVIS�O �:",A)   //Imprime o resultado da divis�o
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Quarta OP��O do menu, denominada FAIXA ET�RIA
      Caso 4
         contador <- 1  //Atribuir o valor 1 � var "contador"
         Escreval ("Voc� deseja calcular a faixa et�ria!")
         Escreval ("Digite a quantidade de pessoas:") //o usu�rio digita a quantidade de pessoas
         leia (nP)
         Enquanto (contador <= nP) faca //Repetir at� contador ser maior que nP
            Escreval ("Digite a idade da pessoa ", contador,":")
            leia (idade)
            Repita
               Escreval ("Escolha o SEXO")   //Pede que o usu�rio digite a letra correspondende ao sexo
               Escreval ("(M) Masculino")
               Escreval ("(F) Feminino")
               leia (sexo)
            ate (sexo = "m") ou (sexo = "f") //Pede o sexo ao usu�rio at� que o usu�rio digite a caracter M ou F
            Se (sexo = "m") entao
               sM <- sM + idade  //Soma a idade com a var(sM) caso o usu�rio digite a letra "M"
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
         Escreval ("A m�dia de idade das pessoas �: ",AB)
         Escreval ("A m�dia de idade das pessoas de sexo MASCULINO �: ",A)
         Escreval ("A m�dia de idade das pessoas de sexo FEMININO �: ",B)
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Quinta OP��O do menu, denominada N�MEROS PRIMOS
      Caso 5
         Escreval ("Voc� deseja saber os n�meros primos de 1 at� o n�mero desejado!")
         Escreval ("Digite um n�mero: ")
         Leia(n)
         para nP de 1 ate n faca  //La�o em nP de 1 at� o numero digitado pelo usu�rio
            contador <- 0
            para i de 1 ate nP faca
               Se nP mod i = 0 entao //Se o resto de nP/i for 0, soma 1 ao contador
                  contador <- contador + 1
               Fimse
            Fimpara
            Se contador = 2 entao   //Se o contador for 2 o numero � primo, caso contr�rio o numero n�o � primo
               Escreval ("S�o n�meros primos: ",nP) //mostra os numeros primos
               A <- A + nP
            Fimse //Volta pro La�o de nP
         Fimpara
         Escreval ("")
         Escreval ("A soma desses n�meros primos � ",A) //resultado da soma dos numeros primos
         Escreval ("")
         Escreval  ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")
      //Sexta OP��O do menu, denominada MUDAN�A DE BASE
      Caso 6
         Escreval ("Voc� deseja fazer uma Mudan�a de Base!")
         Escreval ("Digite um n�mero:")  //Usu�rio digitar� um valor, seja ele bin�rio ou decimal
         leia (n)
         Repita  //Repetir� a msg at� q o usu�rio digite uma das caracteres pedidas
            Escreval ("Digite (D) caso o n� informado for DECIMAL ou (B) se for BIN�RIO:") //Usu�rio informar� se o valor digitado � Bin�rio ou decimal
            leia (base)
         ate (base="D") ou (base="B")
         Se ( base = "D" ) entao   //Entra nesse Se, se o usu�rio digitar a letra D
            i <- n   //Armazena o valor informado pelo usu�rio na var I
            Enquanto i > 0 faca      //Executar os Se seguintes at� i=0
               Se (i mod 2) = 0 entao   //--Se o resto de i/2 for =0,
                  x <- "0" + x          //atribui a caracter "0" � var x.
               senao                    //--Se o resto de i/2 for =1,
                  x <- "1" + x          //atribui a caracter "1" � var x.
               fimse
               i <- i div 2  //Atribui � var "i" o resultado da divis�o de i por 2
            fimenquanto   //Quando i=0 ele sai do la�o ENQUANTO
            Escreval ("O n�mero ",n,", em bin�rio � ",x)  //Imprime o numero informado e o binario do numero
         fimse
         se (base = "B") entao //Entra nesse Se, se o usu�rio digitar B
            x <- (numpcarac(n)) //transforma o numero(inteiro) digitado para caracter e armazena na var x
            i <- compr(x) //L� a quantidade de caracteres da var x, e armazena a quantidade na var i
            n1<-n
            Para aux de 1 ate i faca //La�a a var (aux) para ir de 1 at� i(quantidade de digitos da var(x))
               a <- n1 mod 10
               a <- a*(2^contador) //"contador" representa o expoente da pot�ncia; "a" representa o ultimo digito do valor que o usu�rio digitou.
               b <- b + a
               n1 <- n1/10   //Divide n1 por 10, para tirar o ultimo digito de n1 (ex.: 1010 depois fica 101)
               contador <- contador + 1
               aux <- aux + 1
            fimpara
            Escreval ("")
            Escreval ("O valor",n," em decimal �",b)   //mostra o resultado
         fimse
         Escreval ("")
         Escreval ("Tecle ENTER para voltar ao MENU")
         Escreval ("Ou digite 7 para Sair!")

      Caso 7
         escreval ("OBRIGADO POR USAR O PROGRAMA!")    //uma "deixa" para sair
         escreval ("Volte sempre!")
         interrompa

      outrocaso  //caso o usu�rio digite um valor que nao tenha CASO
         Escreval ("")
         escreval ("OP��O INVALIDA!")
         escreval ("Tecle ENTER para voltar ao MENU!")
         Escreval ("Ou digite 7 para Sair!")

FIMESCOLHA
LEIA (opcao)
ATE (opcao) = 7  //ficar no programa at� o usu�rio digitar "7"
Fimalgoritmo