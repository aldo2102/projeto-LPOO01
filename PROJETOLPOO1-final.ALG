Algoritmo "ProjetoLOPOO1"
// Autor(a): Sávio Oliveira Campos
// CPD: 46421
// Professor(a): Me. Aldo Henrique
// Descrição: Escreva um aplicativo em Portugol que o
// usuário terá o seguinte menu: Divisão, Faixa estária,
// Números Primos, Retornar o maior, menor e média,
// Código Morse, Mudança de Base, Sair.
// Data atual  : 23/03/2019
Var
//------------------------------Variáveis-----------------------------------//
   ope, r, r2, qp, cont, idade, sexo, q_masc, q_fem, n, n_divisores: inteiro
   qn, pn, o, c, con, decimal: inteiro
   n1, n2, divisao, me_id, me_fem, me_masc, soma, maior, menor, media: real
   dec, p, m: real
   i, binario, t, nb: caractere
   teste: logico
//-----------------------ProcedimentoMenuInicial----------------------------//
// Este procedimento apresentará o menu inicial de operações
// até que o usuário escolha sair do programa.
procedimento menu
inicio
   escreval("1. Divisão")
   escreval("2. Faixa Estária")
   escreval("3. Números Primos")
   escreval("4. Retornar o maior, menor e média")
   escreval("5. Código Morse")
   escreval("6. Mudança de Base")
   escreval("7. Sair")
   leia(ope)
   se (ope > 7) entao // A mensagem será informada até que o usuário digite um
      enquanto (ope > 7) faca // número correspondente as opções informadas.
         escreval("É necesário informar o número da opção desejada.")
         escreva("Tecle Enter para recomeçar")
         leia(r)
         limpatela
         msg // Mensagem inicial do programa.
         menu // Chama o procedimento do menu novamente.
      fimenquanto
   fimse
fimprocedimento
//-------------------------FimDoProcedimentoMenu----------------------------//

//---------------------ProcedimentoDeMensagemInicial------------------------//
// Este procedimento apresentará uma mensagem sempre que o menu
// estiver novamente e execução.
procedimento msg
inicio
   escreval(" =============================================")
   escreval("              O que deseja fazer?             ")
   escreval(" =============================================")
fimprocedimento
//-------------------------FimProcedimentoMensagem--------------------------//

//--------------------------------Verificaçao-------------------------------//
// Este procedimento verificará a opção informada pelo usuário.
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
//----------------------------FimVerificação--------------------------------//

//--------------------------ProcedimentoDeErro------------------------------//
// Este procedimento informará o usuário de erro devido a
// digitação de opção errada.
funcao erro(y: inteiro): inteiro
var
   op, i: inteiro
inicio
   limpatela
   escreval("Informe o número correspondente a opção desejada! (1) ou (2)")
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

//------------------------ProcedimentoDeOpção-------------------------------//
// Este procedimento verificará se o usuário deseja tentar fazer
// a operação que está em execução novamente.
procedimento opcao
inicio
   escreval("Caso queira, tecle (1) para 'Sim'.")
   escreval("Caso não queira, tecle (2) para 'Não'.")
fimprocedimento
//---------------------FimProcedimentoOpção---------------------------------//

//---------------------------FunçãoDivisão----------------------------------//
// Esta função realizará a divisão da primeira operação do menu
// inicial e retornará o valor para a variável "divisão".
funcao divi(num1, num2: real): real
var
   result: real
inicio
   result <- num1 / num2
   retorne result
fimfuncao
//-------------------------FimFunçãoDivisão---------------------------------//

//----------------------ProcedimentoFaixaEtária-----------------------------//
// Este procedimento realizará o cálculo das médias da faixa etária.
procedimento faixa
inicio
   escreva("Quantas pessoas serão analisadas?: ")
   leia(qp)
   repita // A estrutura vai repetir até que o usuário escolha encerrar
      // esta operação.
      escreva("Qual é a idade da ", cont, "ª pessoa: ")
      leia(idade)            // 'media_id" vai receber a soma de todas as idades
      me_id <- me_id + idade // fornecidas a cada repetição.
      escreva("Qual é o sexo desta pessoa? (1) Masculino / (2) Feminino: ")
      leia(sexo)
      escreval(" ")
      se (sexo = 1) entao      // Caso o sexo seja masculino.
         q_masc <- q_masc + 1  // A variável armzenará a quantidade de idades de
         // sexo masculino.
         me_masc <- me_masc + idade // A variável armazenará a soma das idades
         // masculinas.
      senao
         se (sexo = 2) entao // Caso seja feminino.
            q_fem <- q_fem + 1 // A variável armzenará a quantidade de idades de
            // sexo feminino.
            me_fem <- me_fem + idade // A variável armazenará a soma das idades
            // femininas.
         senao
            repita // Este processo repetirá caso o usuário informe uma opção
               //inválida.
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
      cont <- cont + 1 // A cada repetição o contador recebe + 1 à sua soma.
   ate (cont > qp) // Até que o contador seja maior que a quantidade de pessoas
   // que o usuário informou.
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
//---------------------FimProcedimentoFaixaEstária--------------------------//

//----------------------------FunçãoDecimal---------------------------------//
// Esta função retornará o valor da conversão do número Decimal para Binário.
funcao conversorDecimal(x: inteiro): caractere // Esta função retornará um
var                                   // número Binário em forma de caractere.
   nbinario: caractere // Esta variável armazenará um dígito binário até o fim
inicio                 // da repetição.
   enquanto (x > 0) faca
      escolha(x mod 2) // O valor digitado será verificado.
                       // Se o resultado for 0, "nbinario" receberá  0 + o valor
                       // que ja estiver contido em na variável.
      caso 0
         nbinario <- "0" + nbinario
         // Caso seja 1, o mesmo acontecerá à variável.
      caso 1
         nbinario <- "1" + nbinario
      fimescolha
      x <- x div 2 // Ao fim realiza a divisão do número pela base (2) pegando
   fimenquanto     // o resultado inteiro para este ser verificado na repetição.
   retorne nbinario // Terminada a verificação retorna o valor convertido.
fimfuncao

//--------------------------FimFunçãoDecimal--------------------------------//

//----------------------------FunçãoTeste-----------------------------------//
// Esta função realizará o teste se o número digitado é um número binário.
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

//----------------------------FunçãoBinário---------------------------------//
// Esta função verificará o número Binário.
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
//--------------------------FimFunçãoBinário--------------------------------//

//-------------------------InícioDoPrograma---------------------------------//
Inicio
   escreval(" =============================================")
   escreval("                   Bem Vindo!                 ")
   escreval("              O que deseja fazer?             ")
   escreval(" =============================================")
   repita // O algoritmo se repetirá até que o usuário escolha parar a execução.
      menu // Procedimento do menu inicial a ser repetido sempre que necessário.
      escolha (ope) // Escolhe o procedimento a ser feito pela opção informada
                    // pelo usuário.
//-----------------------------Caso1-Divisão--------------------------------//
      caso 1
         limpatela
         repita // O processo repetirá até o usuário querer realizar outra
                // operação.
            escreva("Digite o primeiro número à ser dividido: ")
            leia(n1)
            escreva("Digite o segundo número à ser dividido: ")
            leia(n2)
            se (n1 = 0) ou (n2 = 0) entao // Verificação caso o usuário informe
                                          // algum valor igual à 0.
               escreval(" ")
               escreval("Não é possível realizar divisão por 0.")
               escreval("Informe dois números diferentes de 0.")
               escreval("Deseja tentar novamente?")
               opcao // Chama procedimento para que o usuário escolha se deseja
                     // continuar.
               leia(r)
               r <- verificacao(r)
            senao // Se os valores informados forem válidos, a divisão ocorrerá
                  // normalmente.
               divisao <- divi(n1, n2) // A variável "divisão" armazenará o
               // retorno da funcao que realizará a divisão dos valores.
               escreval(" ")
               escreval(n1, " : ", n2, " = ", divisao:4:2)
               escreval(" ")
               escreval("Deseja realizar outra divisão?")
               opcao // Procedimento de verificação se o usuário deseja
                     // realizar outra divisão.
               leia(r) // O usuário escolhe 1 para continuar ou 2 para parar.
               r <- verificacao(r)
            fimse
         ate (r = 2) // Quando o usuário digitar a opção 2 a operação termina e
                     // retorna o menu.
//------------------------------FimCaso1------------------------------------//

//------------------------Caso2-FaixaEstária--------------------------------//
      caso 2
         limpatela
         repita // O processo repetirá até que o usuário decida trocar de operação.
            cont <- 1
            q_masc <- 0
            q_fem <- 0     // Atribuição dos valores às variáveis
            me_id <- 0
            me_fem <- 0
            me_masc <- 0
            faixa // Chama o procedimento que fará o cálculo da faixa etária.
            escreval("A média das idades das pessoas é: ", me_id)
            escreval("A média de idade do sexo masculino é: ", me_masc)
            escreval("A média de idade do sexo feminino é: ", me_fem)
            escreval(" ")
            escreval("Deseja realizar outro teste?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate (r = 2) // Retorna o menu inicial quando o usuário escolher mudar
                     //desta operação.
//-----------------------------Fim-Caso2------------------------------------//

//-------------------------Caso3-NúmerosPrimos------------------------------//
      caso 3
         limpatela
         repita
            escreva("Digite até qual número deseja ver os primos e somá-los: ")
            leia(qp)
            n <- 1 // "n" verificará se o número é primo a cada repetição.
            soma <- 0
            repita // Esta repetição ocorrerá até verificar todos os números
                   // até o informado pelo usuário.
               cont <- 1 // Variável contadora que verificará os números até "n"
               n_divisores <- 0 // Variável que armazena a quantidade de
                                // divisores de "n", inicia com 0.
               repita // Essa repetição ocorrerá para verificar todos os
                      // números que são primos.
                  se (n mod cont = 0) entao // Se "n" for divisível pelo contador
                     n_divisores <- n_divisores + 1 // será armazenado na variável
                                                    // de divisíveis.
                  fimse
                  cont <- cont + 1
               ate (cont > n) // Terminará quando o contador for maior que o
                              // número verificado.
               se (n_divisores = 2) entao // Caso o número verificado tiver
                  escreval(n)             // apenas 2 divisores ele será primo.
                  soma <- soma + n // Será colocado na variável que somará
               fimse               // os números primos.
               n <- n + 1 // Ao final o número verificado recebe mais um para
                          // que seja verificado o próximo número.
            ate (n = qp)
            escreval("A soma de todos os números primos é igual à", soma, ".")
            escreval(" ")
            escreval("Quer fazer outra verificação?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate (r = 2)
// -----------------------------FimCaso3------------------------------------//

//--------------------------Caso4-MaiorMenorMédia---------------------------//
      caso 4
         limpatela
         repita
            cont <- 1 // Variável de controle começa com valor 1.
            escreva("Quantos números deseja verificar? ")
            leia(qn) // Armazenará quantos números serão verificados.
            escreva("Digite o", cont, "º número: ")
            leia(n1)
            soma <- n1 // A variável "maior" armazena este número.
            maior <- n1 // Ambas de maior e menor armazenam também.
            menor <- n1
            cont <- 2
            enquanto (cont <= qn) faca // A repetição ocorrerá até o total de
                                       // números pedidos pelo usuário.
               escreva("Digite o", cont, "º número: ")
               leia(pn) // Lerá o próximo número.
               soma <- soma + pn  // A soma, que já tem o primeiro número digitado
                                  // receberá os próximos números que serão
                                  // armazenados durante a repetição.
               se (pn > maior) entao // Se este número for maior que o contido
                  maior <- pn        // na variável maior, ele o substitui.
               senao
                  se (pn < menor) entao // Caso seja menor que o contido na
                     menor <- pn        // variável menor, ele o substitui
                  fimse
               fimse
               cont <- cont + 1
            fimenquanto
            media <- soma / qn // A média recebe a soma de todos números
                               // dividida pela quantidade.
            escreval(" ")
            escreval("O maior número digitado foi: ", maior)
            escreval("O menor número digitado foi: ", menor)
            escreval("A média de todos os números é: ", media:4:2)
            escreval(" ")
            escreval("Deseja fazer outra verificação?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate(r = 2)
//---------------------------FimCaso4---------------------------------------//

//---------------------------Caso5-CodigoMorse------------------------------//
      caso 5
         limpatela
         repita // O processo repetirá até o usuário decidir sair da operação.
            escreva("Escolha um número de de 0 a 20: ")
            leia(n)
            i <- "O Código Morse deste número é: "
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
               escreval("Digite um número na faixa de 0 a 20")
            fimescolha
            escreval(" ")
            escreval("Deseja ver outro número?")
            opcao
            leia(r)
            r <- verificacao(r)
         ate (r = 2)
//------------------------------FimCaso5------------------------------------//

//--------------------------Caso6-MudançaBase-------------------------------//
      caso 6
         repita // O processo repetirá até que o usuário decia mudar de operação.
            limpatela
            escreval("Deseja converter um número:")
            escreval("(1) Em Binário")
            escreval("(2) Em Decimal")
            leia(o)
            se (o = 1) entao // Se o usuário optar por converter um decimal...
               limpatela
               repita
                  escreva("Digite o número Decimal: ")
                  leia(n)
                  binario <- conversorDecimal(n) // "binario" receberá o resultado
                                                 // da função que fará a conversão
                                                 // do valor.
                  escreval("O número", n, " em Binário é: ", binario)
                  escreval(" ")
                  escreval("Escolha uma opção abaixo:")
                  escreval("(1) Para converter outro número em Decimal.")
                  escreval("(2) Para retornar a operação.")
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
               se (o = 2) entao // Se o usuário optar  por converter binário...
                  limpatela
                  repita
                     escreva("Digite o número Binário: ")
                     leia(nb)
                     teste <- ver(nb) // "Teste verificará se o número é Binário.
                     se teste entao   // Caso seja será convertido em Decimal.
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
                        escreval("O número ", nb, " em Decimal é: ", decimal)
                        escreval(" ")
                        escreval("Escolha uma opção abaixo:")
                        escreval("(1) Para converter outro número em Decimal.")
                        escreval("(2) Para retornar a operação.")
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
                        escreval("Digite um número Binário!")
                        escreval("Escolha uma opção abaixo:")
                        escreval("(1) Para converter outro número em Decimal.")
                        escreval("(2) Para retornar a operação.")
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
   ate (ope = 7) // A estrutura se repetirá até que o usuário digite a opão de saída(7).
Fimalgoritmo