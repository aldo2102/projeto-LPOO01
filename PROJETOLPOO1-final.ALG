Algoritmo "ProjetoLOPOO1"
// Autor(a): S�vio Oliveira Campos
// CPD: 46421
// Professor(a): Me. Aldo Henrique
// Descri��o: Escreva um aplicativo em Portugol que o
// usu�rio ter� o seguinte menu: Divis�o, Faixa est�ria,
// N�meros Primos, Retornar o maior, menor e m�dia,
// C�digo Morse, Mudan�a de Base, Sair.
// Data atual  : 23/03/2019
Var
//------------------------------Vari�veis-----------------------------------//
   ope, r, r2, qp, cont, idade, sexo, q_masc, q_fem, n, n_divisores: inteiro
   qn, pn, o, c, con, decimal: inteiro
   n1, n2, divisao, me_id, me_fem, me_masc, soma, maior, menor, media: real
   dec, p, m: real
   i, binario, t, nb: caractere
   teste: logico
//-----------------------ProcedimentoMenuInicial----------------------------//
// Este procedimento apresentar� o menu inicial de opera��es
// at� que o usu�rio escolha sair do programa.
procedimento menu
inicio
   escreval("1. Divis�o")
   escreval("2. Faixa Est�ria")
   escreval("3. N�meros Primos")
   escreval("4. Retornar o maior, menor e m�dia")
   escreval("5. C�digo Morse")
   escreval("6. Mudan�a de Base")
   escreval("7. Sair")
   leia(ope)
   se (ope > 7) entao // A mensagem ser� informada at� que o usu�rio digite um
      enquanto (ope > 7) faca // n�mero correspondente as op��es informadas.
         escreval("� neces�rio informar o n�mero da op��o desejada.")
         escreva("Tecle Enter para recome�ar")
         leia(r)
         limpatela
         msg // Mensagem inicial do programa.
         menu // Chama o procedimento do menu novamente.
      fimenquanto
   fimse
fimprocedimento
//-------------------------FimDoProcedimentoMenu----------------------------//

//---------------------ProcedimentoDeMensagemInicial------------------------//
// Este procedimento apresentar� uma mensagem sempre que o menu
// estiver novamente e execu��o.
procedimento msg
inicio
   escreval(" =============================================")
   escreval("              O que deseja fazer?             ")
   escreval(" =============================================")
fimprocedimento
//-------------------------FimProcedimentoMensagem--------------------------//

//--------------------------------Verifica�ao-------------------------------//
// Este procedimento verificar� a op��o informada pelo usu�rio.
funcao verificacao(x: inteiro): inteiro
var
   i: inteiro
inicio
   se (x = 1) entao
      i <- x
      limpatela
   senao
      se (x = 2) entao
         i <- x
         limpatela
         msg
      senao
         limpatela
         repita
            i <- erro(x)
         ate (i = 1) ou (i = 2)
      fimse
   fimse
   retorne i
fimfuncao
//----------------------------FimVerifica��o--------------------------------//

//--------------------------ProcedimentoDeErro------------------------------//
// Este procedimento informar� o usu�rio de erro devido a
// digita��o de op��o errada.
funcao erro(y: inteiro): inteiro
var
   op, i: inteiro
inicio
   limpatela
   escreval("Informe o n�mero correspondente a op��o desejada! (1) ou (2)")
   escreval("Deseja tentar novamente?")
   opcao
   leia(op)
   escolha (op)
   caso 1
      i <- op
      limpatela
   caso 2
      i <- op
      limpatela
      msg
   outrocaso
      repita
         i <- erro(op)
      ate (i = 1) ou (i = 2)
   fimescolha
   retorne i
fimfuncao
//------------------------FimProcedimentoErro-------------------------------//

//------------------------ProcedimentoDeOp��o-------------------------------//
// Este procedimento verificar� se o usu�rio deseja tentar fazer
// a opera��o que est� em execu��o novamente.
procedimento opcao
inicio
   escreval("Caso queira, tecle (1) para 'Sim'.")
   escreval("Caso n�o queira, tecle (2) para 'N�o'.")
fimprocedimento
//---------------------FimProcedimentoOp��o---------------------------------//

//---------------------------Fun��oDivis�o----------------------------------//
// Esta fun��o realizar� a divis�o da primeira opera��o do menu
// inicial e retornar� o valor para a vari�vel "divis�o".
funcao divi(num1, num2: real): real
var
   result: real
inicio
   result <- num1 / num2
   retorne result
fimfuncao
//-------------------------FimFun��oDivis�o---------------------------------//

//----------------------ProcedimentoFaixaEt�ria-----------------------------//
// Este procedimento realizar� o c�lculo das m�dias da faixa et�ria.
procedimento faixa
inicio
   escreva("Quantas pessoas ser�o analisadas?: ")
   leia(qp)
   repita // A estrutura vai repetir at� que o usu�rio escolha encerrar
      // esta opera��o.
      escreva("Qual � a idade da ", cont, "� pessoa: ")
      leia(idade)            // 'media_id" vai receber a soma de todas as idades
      me_id <- me_id + idade // fornecidas a cada repeti��o.
      escreva("Qual � o sexo desta pessoa? (1) Masculino / (2) Feminino: ")
      leia(sexo)
      escreval(" ")
      se (sexo = 1) entao      // Caso o sexo seja masculino.
         q_masc <- q_masc + 1  // A vari�vel armzenar� a quantidade de idades de
         // sexo masculino.
         me_masc <- me_masc + idade // A vari�vel armazenar� a soma das idades
         // masculinas.
      senao
         se (sexo = 2) entao // Caso seja feminino.
            q_fem <- q_fem + 1 // A vari�vel armzenar� a quantidade de idades de
            // sexo feminino.
            me_fem <- me_fem + idade // A vari�vel armazenar� a soma das idades
            // femininas.
         senao
            repita // Este processo repetir� caso o usu�rio informe uma op��o
               //inv�lida.
               r <- erro(sexo)
               cont <- 0
               q_masc <- 0
               q_fem <- 0
               me_id <- 0
               me_fem <- 0
               me_masc <- 0
            ate (r = 1) ou (r = 2)
         fimse
      fimse
      cont <- cont + 1 // A cada repeti��o o contador recebe + 1 � sua soma.
   ate (cont > qp) // At� que o contador seja maior que a quantidade de pessoas
   // que o usu�rio informou.
   se (me_id > 0) entao
      me_id <- me_id / qp
   fimse
   se (me_masc > 0) entao
      me_masc <- me_masc / q_masc
   fimse
   se (me_fem > 0) entao
      me_fem <- me_fem / q_fem
   fimse
fimprocedimento
//---------------------FimProcedimentoFaixaEst�ria--------------------------//

//----------------------------Fun��oDecimal---------------------------------//
// Esta fun��o retornar� o valor da convers�o do n�mero Decimal para Bin�rio.
funcao conversorDecimal(x: inteiro): caractere // Esta fun��o retornar� um
var                                   // n�mero Bin�rio em forma de caractere.
   nbinario: caractere // Esta vari�vel armazenar� um d�gito bin�rio at� o fim
inicio                 // da repeti��o.
   enquanto (x > 0) faca
      escolha(x mod 2) // O valor digitado ser� verificado.
                       // Se o resultado for 0, "nbinario" receber�  0 + o valor
                       // que ja estiver contido em na vari�vel.
      caso 0
         nbinario <- "0" + nbinario
         // Caso seja 1, o mesmo acontecer� � vari�vel.
      caso 1
         nbinario <- "1" + nbinario
      fimescolha
      x <- x div 2 // Ao fim realiza a divis�o do n�mero pela base (2) pegando
   fimenquanto     // o resultado inteiro para este ser verificado na repeti��o.
   retorne nbinario // Terminada a verifica��o retorna o valor convertido.
fimfuncao

//--------------------------FimFun��oDecimal--------------------------------//

//----------------------------Fun��oTeste-----------------------------------//
// Esta fun��o realizar� o teste se o n�mero digitado � um n�mero bin�rio.
funcao ver(x: caractere): logico
var
   result: logico
   comp, i, c: Inteiro
   v: caractere
inicio
   result <- verdadeiro
   comp <- compr(x)
   para i de 1 ate comp faca
      v <- copia(x, i, 1)
      c <- caracPnum(v)
      se (c > 1) ou (c < 0) entao
         result <- falso
      fimse
   fimpara
   retorne result
fimfuncao
//------------------------------FimTeste------------------------------------//

//----------------------------Fun��oBin�rio---------------------------------//
// Esta fun��o verificar� o n�mero Bin�rio.
funcao ver2(x: caractere): caractere
var
   i: inteiro
   c, v: caractere
inicio
   c <- ""
   v <- ""
   para i de 1 ate compr(x) faca
      v <- copia(x, i, 1)
      se v <> " " entao
         c <- c + v
      fimse
   fimpara
   retorne c
fimfuncao
//--------------------------FimFun��oBin�rio--------------------------------//

//-------------------------In�cioDoPrograma---------------------------------//
Inicio
   escreval(" =============================================")
   escreval("                   Bem Vindo!                 ")
   escreval("              O que deseja fazer?             ")
   escreval(" =============================================")
   repita // O algoritmo se repetir� at� que o usu�rio escolha parar a execu��o.
      menu // Procedimento do menu inicial a ser repetido sempre que necess�rio.
      escolha (ope) // Escolhe o procedimento a ser feito pela op��o informada
                    // pelo usu�rio.
//-----------------------------Caso1-Divis�o--------------------------------//
      caso 1
         limpatela
         repita // O processo repetir� at� o usu�rio querer realizar outra
                // opera��o.
            escreva("Digite o primeiro n�mero � ser dividido: ")
            leia(n1)
            escreva("Digite o segundo n�mero � ser dividido: ")
            leia(n2)
            se (n1 = 0) ou (n2 = 0) entao // Verifica��o caso o usu�rio informe
                                          // algum valor igual � 0.
               escreval(" ")
               escreval("N�o � poss�vel realizar divis�o por 0.")
               escreval("Informe dois n�meros diferentes de 0.")
               escreval("Deseja tentar novamente?")
               opcao // Chama procedimento para que o usu�rio escolha se deseja
                     // continuar.
               leia(r)
               r <- verificacao(r)
            senao // Se os valores informados forem v�lidos, a divis�o ocorrer�
                  // normalmente.
               divisao <- divi(n1, n2) // A vari�vel "divis�o" armazenar� o
               // retorno da funcao que realizar� a divis�o dos valores.
               escreval(" ")
               escreval(n1, " : ", n2, " = ", divisao:4:2)
               escreval(" ")
               escreval("Deseja realizar outra divis�o?")
               opcao // Procedimento de verifica��o se o usu�rio deseja
                     // realizar outra divis�o.
               leia(r) // O usu�rio escolhe 1 para continuar ou 2 para parar.
               r <- verificacao(r)
            fimse
         ate (r = 2) // Quando o usu�rio digitar a op��o 2 a opera��o termina e
                     // retorna o menu.
//------------------------------FimCaso1------------------------------------//

//------------------------Caso2-FaixaEst�ria--------------------------------//
      caso 2
         limpatela
         repita // O processo repetir� at� que o usu�rio decida trocar de opera��o.
            cont <- 1
            q_masc <- 0
            q_fem <- 0     // Atribui��o dos valores �s vari�veis
            me_id <- 0
            me_fem <- 0
            me_masc <- 0
            faixa // Chama o procedimento que far� o c�lculo da faixa et�ria.
            escreval("A m�dia das idades das pessoas �: ", me_id)
            escreval("A m�dia de idade do sexo masculino �: ", me_masc)
            escreval("A m�dia de idade do sexo feminino �: ", me_fem)
            escreval(" ")
            escreval("Deseja realizar outro teste?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate (r = 2) // Retorna o menu inicial quando o usu�rio escolher mudar
                     //desta opera��o.
//-----------------------------Fim-Caso2------------------------------------//

//-------------------------Caso3-N�merosPrimos------------------------------//
      caso 3
         limpatela
         repita
            escreva("Digite at� qual n�mero deseja ver os primos e som�-los: ")
            leia(qp)
            n <- 1 // "n" verificar� se o n�mero � primo a cada repeti��o.
            soma <- 0
            repita // Esta repeti��o ocorrer� at� verificar todos os n�meros
                   // at� o informado pelo usu�rio.
               cont <- 1 // Vari�vel contadora que verificar� os n�meros at� "n"
               n_divisores <- 0 // Vari�vel que armazena a quantidade de
                                // divisores de "n", inicia com 0.
               repita // Essa repeti��o ocorrer� para verificar todos os
                      // n�meros que s�o primos.
                  se (n mod cont = 0) entao // Se "n" for divis�vel pelo contador
                     n_divisores <- n_divisores + 1 // ser� armazenado na vari�vel
                                                    // de divis�veis.
                  fimse
                  cont <- cont + 1
               ate (cont > n) // Terminar� quando o contador for maior que o
                              // n�mero verificado.
               se (n_divisores = 2) entao // Caso o n�mero verificado tiver
                  escreval(n)             // apenas 2 divisores ele ser� primo.
                  soma <- soma + n // Ser� colocado na vari�vel que somar�
               fimse               // os n�meros primos.
               n <- n + 1 // Ao final o n�mero verificado recebe mais um para
                          // que seja verificado o pr�ximo n�mero.
            ate (n = qp)
            escreval("A soma de todos os n�meros primos � igual �", soma, ".")
            escreval(" ")
            escreval("Quer fazer outra verifica��o?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate (r = 2)
// -----------------------------FimCaso3------------------------------------//

//--------------------------Caso4-MaiorMenorM�dia---------------------------//
      caso 4
         limpatela
         repita
            cont <- 1 // Vari�vel de controle come�a com valor 1.
            escreva("Quantos n�meros deseja verificar? ")
            leia(qn) // Armazenar� quantos n�meros ser�o verificados.
            escreva("Digite o", cont, "� n�mero: ")
            leia(n1)
            soma <- n1 // A vari�vel "maior" armazena este n�mero.
            maior <- n1 // Ambas de maior e menor armazenam tamb�m.
            menor <- n1
            cont <- 2
            enquanto (cont <= qn) faca // A repeti��o ocorrer� at� o total de
                                       // n�meros pedidos pelo usu�rio.
               escreva("Digite o", cont, "� n�mero: ")
               leia(pn) // Ler� o pr�ximo n�mero.
               soma <- soma + pn  // A soma, que j� tem o primeiro n�mero digitado
                                  // receber� os pr�ximos n�meros que ser�o
                                  // armazenados durante a repeti��o.
               se (pn > maior) entao // Se este n�mero for maior que o contido
                  maior <- pn        // na vari�vel maior, ele o substitui.
               senao
                  se (pn < menor) entao // Caso seja menor que o contido na
                     menor <- pn        // vari�vel menor, ele o substitui
                  fimse
               fimse
               cont <- cont + 1
            fimenquanto
            media <- soma / qn // A m�dia recebe a soma de todos n�meros
                               // dividida pela quantidade.
            escreval(" ")
            escreval("O maior n�mero digitado foi: ", maior)
            escreval("O menor n�mero digitado foi: ", menor)
            escreval("A m�dia de todos os n�meros �: ", media:4:2)
            escreval(" ")
            escreval("Deseja fazer outra verifica��o?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate(r = 2)
//---------------------------FimCaso4---------------------------------------//

//---------------------------Caso5-CodigoMorse------------------------------//
      caso 5
         limpatela
         repita // O processo repetir� at� o usu�rio decidir sair da opera��o.
            escreva("Escolha um n�mero de de 0 a 20: ")
            leia(n)
            i <- "O C�digo Morse deste n�mero �: "
            escolha (n)
            caso 0
               escreval(i, "-----")
            caso 1
               escreval(i, ".----")
            caso 2
               escreval(i, "..---")
            caso 3
               escreval(i, "...--")
            caso 4
               escreval(i, "....-")
            caso 5
               escreval(i, ".....")
            caso 6
               escreval(i, "-....")
            caso 7
               escreval(i, "--...")
            caso 8
               escreval(i, "---..")
            caso 9
               escreval(i, "----.")
            caso 10
               escreval(i, ".---- -----")
            caso 11
               escreval(i, ".---- .----")
            caso 12
               escreval(i, ".---- ..---")
            caso 13
               escreval(i ".---- ...--")
            caso 14
               escreval(i, ".---- ....-")
            caso 15
               escreval(i, ".---- .....")
            caso 16
               escreval(i, ".---- -....")
            caso 17
               escreval(i, ".---- --...")
            caso 18
               escreval(i, ".---- ---..")
            caso 19
               escreval(i, ".---- ----.")
            caso 20
               escreval(i, "..--- -----")
            outrocaso
               escreval("Digite um n�mero na faixa de 0 a 20")
            fimescolha
            escreval(" ")
            escreval("Deseja ver outro n�mero?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate (r = 2)
//------------------------------FimCaso5------------------------------------//

//--------------------------Caso6-Mudan�aBase-------------------------------//
      caso 6
         repita // O processo repetir� at� que o usu�rio decia mudar de opera��o.
            limpatela
            escreval("Deseja converter um n�mero:")
            escreval("(1) Em Bin�rio")
            escreval("(2) Em Decimal")
            leia(o)
            se (o = 1) entao // Se o usu�rio optar por converter um decimal...
               limpatela
               repita
                  escreva("Digite o n�mero Decimal: ")
                  leia(n)
                  binario <- conversorDecimal(n) // "binario" receber� o resultado
                                                 // da fun��o que far� a convers�o
                                                 // do valor.
                  escreval("O n�mero", n, " em Bin�rio �: ", binario)
                  escreval(" ")
                  escreval("Escolha uma op��o abaixo:")
                  escreval("(1) Para converter outro n�mero em Decimal.")
                  escreval("(2) Para retornar a opera��o.")
                  escreval("(3) Para retornar ao menu inicial.")
                  leia(r)
                  se (r = 1) entao
                     limpatela
                  senao
                     se (r = 2) entao
                        limpatela
                     senao
                        se (r = 3) entao
                           limpatela
                           msg
                        senao
                           r <- erro(r)
                           se (r = 1) entao
                              limpatela
                           senao
                              se (r = 2) entao
                                 limpatela
                                 msg
                                 menu
                              senao
                                 repita
                                    limpatela
                                    r <- erro(r)
                                 ate (r = 1) ou (r = 2)
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               ate (r <> 1)
            senao
               se (o = 2) entao // Se o usu�rio optar  por converter bin�rio...
                  limpatela
                  repita
                     escreva("Digite o n�mero Bin�rio: ")
                     leia(nb)
                     teste <- ver(nb) // "Teste verificar� se o n�mero � Bin�rio.
                     se teste entao   // Caso seja ser� convertido em Decimal.
                        nb <- ver2(nb)
                        c <- compr(nb)
                        t <- ""
                        decimal <- 0
                        p <- 0
                        para con de c ate 1 passo -1 faca
                           t <- copia(nb, con, 1)
                           dec <- caracPnum(t)
                           m <- dec * exp(2, p)
                           decimal <- (decimal + int(m))
                           p <- p + 1
                        fimpara
                        escreval("O n�mero ", nb, " em Decimal �: ", decimal)
                        escreval(" ")
                        escreval("Escolha uma op��o abaixo:")
                        escreval("(1) Para converter outro n�mero em Decimal.")
                        escreval("(2) Para retornar a opera��o.")
                        escreval("(3) Para retornar ao menu inicial.")
                        leia(r)
                        se (r = 1) entao
                           limpatela
                        senao
                           se (r = 2) entao
                              limpatela
                           senao
                              se (r = 3) entao
                                 limpatela
                                 msg
                              senao
                                 r <- erro(r)
                                 se (r = 1) entao
                                    limpatela
                                 senao
                                    se (r = 2) entao
                                       limpatela
                                       msg
                                       menu
                                    senao
                                       repita
                                          limpatela
                                          r <- erro(r)
                                       ate (r = 1) ou (r = 2)
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     senao
                        escreval("Digite um n�mero Bin�rio!")
                        escreval("Escolha uma op��o abaixo:")
                        escreval("(1) Para converter outro n�mero em Decimal.")
                        escreval("(2) Para retornar a opera��o.")
                        escreval("(3) Para retornar ao menu inicial.")
                        leia(r)
                        se (r = 1) entao
                           limpatela
                        senao
                           se (r = 2) entao
                              limpatela
                           senao
                              se (r = 3) entao
                                 limpatela
                                 msg
                              senao
                                 r <- erro(r)
                                 se (r = 1) entao
                                    limpatela
                                 senao
                                    se (r = 2) entao
                                       limpatela
                                       msg
                                       menu
                                    senao
                                       repita
                                          limpatela
                                          r <- erro(r)
                                       ate (r = 1) ou (r = 2)
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  ate (r <> 1)
               senao
                  limpatela
                  repita
                     r <- erro(o)
                     se (r = 1) entao
                        limpatela
                     senao
                        se (r = 2) entao
                           limpatela
                           msg
                           menu
                        senao
                           repita
                              limpatela
                              r <- erro(r)
                           ate (r = 1) ou (r = 2)
                        fimse
                     fimse
                  ate (r = 1) ou (r = 2)
               fimse
            fimse
         ate (r = 3)
//-------------------------------FimCaso6-----------------------------------//
      fimescolha
   ate (ope = 7) // A estrutura se repetir� at� que o usu�rio digite a op�o de sa�da(7).
Fimalgoritmo