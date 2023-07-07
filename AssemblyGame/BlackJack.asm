; ------- TABELA DE CORES -------
; adicione ao caracter para Selecionar a cor correspondente

; 0 branco							0000 0000
; 256 marrom						0001 0000
; 512 verde							0010 0000
; 768 oliva							0011 0000
; 1024 azul marinho					0100 0000
; 1280 roxo							0101 0000
; 1536 teal							0110 0000
; 1792 prata						0111 0000
; 2048 cinza						1000 0000
; 2304 vermelho						1001 0000
; 2560 lima							1010 0000
; 2816 amarelo						1011 0000
; 3072 azul							1100 0000
; 3328 rosa							1101 0000
; 3584 aqua							1110 0000dekayde
; 3840 branco						1111 0000


jmp main

fraseaposta: string "Quanto voce quer apostar?";							strings usadas no jogo
valoresaposta: string "A $10    S $20    D $50"
valoersaposta2: string "F $100   N Sair"
decisao: string "Voce quer mais uma carta?"
decisao2: string "S Comprar   N Passar a vez"
apagalinha: string "                            "
cabum : string "Estourou pai"
bateu : string "Voce bateu 21"
ganhou : string "Voce ganhou"
perdeu : string "O bot venceu"
suascartas: string "Suas Cartas:"
eoembaralhas: string "Press Enter para embaralhar"


; cartaLinha0 : "______"
; cartaLinha1 : "|    |"
; cartaLinha2 : "|    |"
; cartaLinha3 : "|    |"
; cartaLinha4 : "|    |"
; cartaLinha5 : "|    |"
; cartaLinha6 : "|    |"
; cartaLinha7 : "|____|"

cartaLinha0 : var #7									;desenhos das cartas
cartaLinha1 : var #7
cartaLinha2 : var #7
cartaLinha3 : var #7
cartaLinha4 : var #7
cartaLinha5 : var #7
cartaLinha6 : var #7
cartaLinha7 : var #7
Inicio : var #1200										;tela inicial

static cartaLinha0 + #0, #9
static cartaLinha0 + #1, #1
static cartaLinha0 + #2, #1
static cartaLinha0 + #3, #1
static cartaLinha0 + #4, #1
static cartaLinha0 + #5, #2
static cartaLinha0 + #6, #'\0'

static cartaLinha1 + #0, #8
static cartaLinha1 + #1, #32
static cartaLinha1 + #2, #32
static cartaLinha1 + #3, #32
static cartaLinha1 + #4, #32
static cartaLinha1 + #5, #3
static cartaLinha1 + #6, #'\0'

static cartaLinha2 + #0, #8
static cartaLinha2 + #1, #32
static cartaLinha2 + #2, #32
static cartaLinha2 + #3, #32
static cartaLinha2 + #4, #32
static cartaLinha2 + #5, #3
static cartaLinha2 + #6, #'\0'

static cartaLinha3 + #0, #8
static cartaLinha3 + #1, #32
static cartaLinha3 + #2, #32
static cartaLinha3 + #3, #32
static cartaLinha3 + #4, #32
static cartaLinha3 + #5, #3
static cartaLinha3 + #6, #'\0'

static cartaLinha4 + #0, #8
static cartaLinha4 + #1, #32
static cartaLinha4 + #2, #32
static cartaLinha4 + #3, #32
static cartaLinha4 + #4, #32
static cartaLinha4 + #5, #3
static cartaLinha4 + #6, #'\0'

static cartaLinha5 + #0, #8
static cartaLinha5 + #1, #32
static cartaLinha5 + #2, #32
static cartaLinha5 + #3, #32
static cartaLinha5 + #4, #32
static cartaLinha5 + #5, #3
static cartaLinha5 + #6, #'\0'

static cartaLinha6 + #0, #8
static cartaLinha6 + #1, #32
static cartaLinha6 + #2, #32
static cartaLinha6 + #3, #32
static cartaLinha6 + #4, #32
static cartaLinha6 + #5, #3
static cartaLinha6 + #6, #'\0'

static cartaLinha7 + #0, #7
static cartaLinha7 + #1, #6
static cartaLinha7 + #2, #6
static cartaLinha7 + #3, #6
static cartaLinha7 + #4, #6
static cartaLinha7 + #5, #5
static cartaLinha7 + #6, #'\0'

    static Inicio + #0, #20
  static Inicio + #1, #23
  static Inicio + #2, #21
  static Inicio + #3, #22
  static Inicio + #4, #20
  static Inicio + #5, #23
  static Inicio + #6, #21
  static Inicio + #7, #22
  static Inicio + #8, #20
  static Inicio + #9, #23
  static Inicio + #10, #21
  static Inicio + #11, #22
  static Inicio + #12, #20
  static Inicio + #13, #23
  static Inicio + #14, #21
  static Inicio + #15, #22
  static Inicio + #16, #20
  static Inicio + #17, #23
  static Inicio + #18, #21
  static Inicio + #19, #22
  static Inicio + #20, #20
  static Inicio + #21, #23
  static Inicio + #22, #21
  static Inicio + #23, #22
  static Inicio + #24, #20
  static Inicio + #25, #23
  static Inicio + #26, #21
  static Inicio + #27, #22
  static Inicio + #28, #20
  static Inicio + #29, #23
  static Inicio + #30, #21
  static Inicio + #31, #22
  static Inicio + #32, #20
  static Inicio + #33, #23
  static Inicio + #34, #21
  static Inicio + #35, #22
  static Inicio + #36, #20
  static Inicio + #37, #23
  static Inicio + #38, #21
  static Inicio + #39, #22

  ;Linha 1
  static Inicio + #40, #22
  static Inicio + #79, #20

  ;Linha 2
  static Inicio + #80, #21
  static Inicio + #119, #23

  ;Linha 3
  static Inicio + #120, #23
  static Inicio + #159, #21

  ;Linha 4
  static Inicio + #160, #20
  static Inicio + #169, #6
  static Inicio + #170, #6
  static Inicio + #199, #22

  ;Linha 5
  static Inicio + #200, #22
  static Inicio + #208, #3
  static Inicio + #211, #92
  static Inicio + #239, #20

  ;Linha 6
  static Inicio + #240, #21
  static Inicio + #248, #3
  static Inicio + #249, #6
  static Inicio + #250, #6
  static Inicio + #251, #47
  static Inicio + #279, #23

  ;Linha 7
  static Inicio + #280, #23
  static Inicio + #288, #3
  static Inicio + #291, #25
  static Inicio + #319, #21
  

  ;Linha 8
  static Inicio + #320, #20

  static Inicio + #328, #3
  static Inicio + #331, #3
  static Inicio + #332, #16
  static Inicio + #336, #47
  static Inicio + #337, #92
  static Inicio + #340, #47
  static Inicio + #341, #1
  static Inicio + #342, #3
  static Inicio + #345, #47
  static Inicio + #359, #22

  ;Linha 9
  static Inicio + #360, #22
  static Inicio + #368, #3
  static Inicio + #371, #47
  static Inicio + #372, #16
  static Inicio + #373, #6
  static Inicio + #375, #47
  static Inicio + #376, #1
  static Inicio + #377, #1
  static Inicio + #378, #92
  static Inicio + #380, #92
  static Inicio + #381, #6
  static Inicio + #382, #3
  static Inicio + #384, #47
  static Inicio + #399, #20

  ;Linha 10
  static Inicio + #400, #21
  static Inicio + #409, #1
  static Inicio + #410, #1
  static Inicio + #422, #3
  static Inicio + #423, #47
  static Inicio + #439, #23

  ;Linha 11
  static Inicio + #440, #23
  static Inicio + #462, #3
  static Inicio + #463, #92
  static Inicio + #479, #21

  ;Linha 12
  static Inicio + #480, #20
  static Inicio + #493, #2
  static Inicio + #494, #1
  static Inicio + #496, #47
  static Inicio + #497, #92
  static Inicio + #500, #47
  static Inicio + #501, #1
  static Inicio + #502, #3
  static Inicio + #504, #92
  static Inicio + #519, #22

  ;Linha 13
  static Inicio + #520, #22
  static Inicio + #533, #3
  static Inicio + #535, #47
  static Inicio + #536, #1
  static Inicio + #537, #1
  static Inicio + #538, #92
  static Inicio + #540, #92
  static Inicio + #541, #6
  static Inicio + #542, #3
  static Inicio + #545, #92
  static Inicio + #559, #20

  ;Linha 14
  static Inicio + #560, #21
  static Inicio + #573, #3
  static Inicio + #599, #23

  ;Linha 15
  static Inicio + #600, #23
  static Inicio + #612, #7
  static Inicio + #613, #5
  static Inicio + #639, #21

  ;Linha 16
  static Inicio + #640, #20
  static Inicio + #679, #22

  ;Linha 17
  static Inicio + #680, #22
  static Inicio + #719, #20

  ;Linha 18
  static Inicio + #720, #21
  static Inicio + #759, #23

  ;Linha 19
  static Inicio + #760, #23
  static Inicio + #799, #21

  ;Linha 20
  static Inicio + #800, #20
  static Inicio + #839, #22

  ;Linha 21
  static Inicio + #840, #22
  static Inicio + #879, #20

  ;Linha 22
  static Inicio + #880, #21
  static Inicio + #919, #23

  ;Linha 23
  static Inicio + #920, #23
  static Inicio + #929, #80
  static Inicio + #930, #82
  static Inicio + #931, #69
  static Inicio + #932, #83
  static Inicio + #933, #83
  static Inicio + #934, #32
  static Inicio + #935, #34
  static Inicio + #936, #69
  static Inicio + #937, #78
  static Inicio + #938, #84
  static Inicio + #939, #69
  static Inicio + #940, #82
  static Inicio + #941, #34
  static Inicio + #943, #84
  static Inicio + #944, #79
  static Inicio + #946, #80
  static Inicio + #947, #76
  static Inicio + #948, #65
  static Inicio + #949, #89
  static Inicio + #959, #21

  ;Linha 24
  static Inicio + #960, #20
  static Inicio + #999, #22

  ;Linha 25
  static Inicio + #1000, #22
  static Inicio + #1039, #20

  ;Linha 26
  static Inicio + #1040, #21
  static Inicio + #1079, #23

  ;Linha 27
  static Inicio + #1080, #23
  static Inicio + #1119, #21

  ;Linha 28
  static Inicio + #1120, #20
  static Inicio + #1159, #22

  ;Linha 29
  static Inicio + #1160, #22
  static Inicio + #1161, #21
  static Inicio + #1162, #23
  static Inicio + #1163, #20
  static Inicio + #1164, #22
  static Inicio + #1165, #21
  static Inicio + #1166, #23
  static Inicio + #1167, #20
  static Inicio + #1168, #22
  static Inicio + #1169, #21
  static Inicio + #1170, #23
  static Inicio + #1171, #20
  static Inicio + #1172, #22
  static Inicio + #1173, #21
  static Inicio + #1174, #23
  static Inicio + #1175, #20
  static Inicio + #1176, #22
  static Inicio + #1177, #21
  static Inicio + #1178, #23
  static Inicio + #1179, #20
  static Inicio + #1180, #22
  static Inicio + #1181, #21
  static Inicio + #1182, #23
  static Inicio + #1183, #20
  static Inicio + #1184, #22
  static Inicio + #1185, #21
  static Inicio + #1186, #23
  static Inicio + #1187, #20
  static Inicio + #1188, #22
  static Inicio + #1189, #21
  static Inicio + #1190, #23
  static Inicio + #1191, #20
  static Inicio + #1192, #22
  static Inicio + #1193, #21
  static Inicio + #1194, #23
  static Inicio + #1195, #20
  static Inicio + #1196, #22
  static Inicio + #1197, #21
  static Inicio + #1198, #23
  static Inicio + #1199, #20


endereco_base : var #1			; Endereço em que o caractere da esquerda superior da carta será impresso, é usado para calcular as informações dentro da carta
flag_de_as_player: var #1				; Flag que indica se a pessoa que está jogando possui um Ás
flag_de_as_bot: var #1
flag_de_jogada : var #1			; Flag que indica quem está jogando
flag_de_decisao : var #1		; Flag que indica se o jogador quer continuar comprando ou não
soma_player: var #1				; Variável que indica a soma da pontuação do player
soma_bot: var #1				; Variável que indica a soma da pontuação do bot
dinheiro: var #1
aposta: var #1
n_cartas_restantes: var #1  ;igual a 52 - sum(v_cartas_usadas)
v_cartas_usadas: var #52
carta_sorteada: var #1 ;valor de uma carta -- entrará no vetor
v_cartas_sorteadas: var #20
ind_vetor_cartas_sorteadas: var #1
estagio_baralho: var #1


; Coisas Importante para se lembrar:
; flag de jogadas{
;	1 = Vez do bot
;	0 = Vez do player

main:; jogo
	
	loadn r0, #100
	store dinheiro, r0
	
	call printInicioScreen				;Tela inicio do jogo
	call Aperteenter					; Apertar enter para começar o jogo					
	
	main_loop:
		
		;call delaygrande
		call ApagaTela					; apagar tela de inicio
		loadn r0, #0
		load r1, dinheiro
		cmp r1, r0
		jel End_game					; compara dinheiro com 0 (condição de parada do jogo)
		 
		call start_vars					; inicializa as variaveis que serao utilizadas
		call Embaralha1					; tela de embaralhamento
		call sorteia_20_cartas			; junto com a tela de embaralhamento, cartas que serão utilizadas no jogo
		call ApagaTela					; Apaga tela de embaralhamento
		
		call Aposta						; Aposta para jogar
		call ImprimeDinheiro			; Imprime o dinheiro pós aposta
		call start_game					; início do jogo

		round:
			
			Jogada_Player:
			
				loadn r0, #887
				store endereco_base, r0			;imprimir as cartas na posição certa
				loadn r0, #0
				store flag_de_jogada, r0		;indicar que é o player jogando
			
				loop_Jogada_Player:
					
					loadn r0, #21
					load r1, soma_player
					cmp r1, r0					; condição de parada do jogo
					jgr VoceEstourou			; se estourar 21, perde e nem vai pra vez do bot
					cmp r1, r0
					jeq VoceBateu				; se somaplayer = 21, player automaticamente ganha
					
					call Decide					; decide se vai parar ou pedir mais uma carta
					loadn r0, #0
					load r1, flag_de_decisao	
					cmp r1, r0
					jne Jogada_Bot				; se o flag for 1, significa que é vez do bot jogar
					call Jogada					; irá gerar uma nova carta
					jmp loop_Jogada_Player		; se repete até uma condicao de saida for satisfeita
			
			Jogada_Bot:
			
				loadn r0, #44
				store endereco_base, r0			;imprimir as cartas na posição certa
				loadn r0, #1
				store flag_de_jogada, r0		;indicar que é o bot jogando
				
				loop_Jogada_Bot:
				
					load r0, soma_player		
					load r1, soma_bot
					cmp r1, r0					; o bot comprará até sua soma ser maior que o player
					jgr Compara					; compara se a soma do bot é <= 21, se for=bot ganha
					call Jogada					; gera a carta do bot
					jmp loop_Jogada_Bot			; se repete até uma condicao de saida for satisfeita
					
			Compara:
				
				loadn r0, #21					
				load r1, soma_bot
				cmp r1, r0
				jeq Obotganhou					; se soma bot == 21, player ganha				
				cmp r1, r0						
				jgr VoceGanhou					; se soma bot > 21, player ganha
				cmp r1, r0
				jle Obotganhou					; se soma bot < 21, bot ganha

				jmp main_loop
				
	End_game:
	call ApagaTela
	;	Imprime tela de você perdeu
	;	Imprime o dinheiro final
	
	halt

start_vars:; inicia as variaveis do jogo

	push r0
	
	; inicia n_cartas_restantes
	loadn r0, #52
	store n_cartas_restantes, r0
	
	; inicia vetor cartas_usadas vet(0, 0, 0...)
	call start_cartas_usadas_loop
	
	loadn r0, #0
	store flag_de_jogada, r0
	store flag_de_as_bot, r0
	store flag_de_as_player, r0
	store ind_vetor_cartas_sorteadas, r0
	store soma_player, r0
	store soma_bot, r0
	
	loadn r0, #1
	store estagio_baralho, r0
	
	pop r0
	
	rts
	
start_cartas_usadas_loop:; verifica se a carta a foi usada ou não

	push r0 ; valor a ser inserido
	push r1 ; posicao atual
	push r2 ; fim do vetor
	
	loadn r0, #52
	loadn r1, #v_cartas_usadas
	add r2, r1, r0 
	
	
	loadn r0, #0 ; coloca zero em todas as posicoes
	
	loop_pcu:
		
		storei r1, r0
		inc r1
		cmp r2, r1
		jne loop_pcu
	
	pop r2
	pop r1
	pop r0
	
	rts

sorteia_20_cartas:; cartas que serão usadas no jogo

	push r0 ; valor a ser inserido
	push r1 ; posicao
	push r2 ; posicao + 20 -- limite posicao -- [0, 20[
	push r3 ; cartas_restantes
	push r4 ; posicao vetor de usadas
	push r5 ; incrementa na posicao usada (sobe a flag)
	
	loadn r3, #52
	loadn r2, #20
	loadn r1, #v_cartas_sorteadas
	add r2, r2, r1 ; posicao maxima
	
	loop_pcs:
		
		call gerador_aleatorio ; preenche carta sorteada
		
		load r0, carta_sorteada
		storei r1, r0 ; salva a carta sorteada no vetor de sorteadas
		
		dec r3
		store n_cartas_restantes, r3 ; ajusta a quantidade de cartas restantes
		
		
		loadn r4, #v_cartas_usadas
		add r4, r4, r0
		loadi r5, r4
		inc r5
		storei r4, r5 ; sobe o flag de carta usada no vetor de cartas usadas
		
		inc r1
		cmp r1, r2
		jne loop_pcs
	
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	rts
	
gerador_aleatorio: ;gera UMA carta aleatoria em -> carta_sorteada

	;mod cartas

	push r0   ;leitor da tecla
	push r1   ;auxiliar setado para zero --- DEVERIA SER BARRA DE ESPAÇO
	push r2   ;incrementador para fazer o mod
	push r3   ;limite de cartas - n_cartas_restantes
	push r4   ;apenas no gerenciador de cartas usadas
	push r5
	
	loadn r0, #255
	loadn r1, #13
	loadn r2, #0
	load r3, n_cartas_restantes

	inchar r5
	
	loop_gerador:
		inchar r0
		inc r2
		mod r2, r2, r3  ;reseta o incrementador ao mod -- fica ciclo de [0, r3[
		cmp r0, r1
		jne loop_gerador		
		
	; valor salvo em r2 é X (aleatorio) mod n_cartas_restantes. 
	
	load r5, estagio_baralho
	call Embaralha
	inc r5
	store estagio_baralho, r5

	store carta_sorteada, r2
	;r2 carta
	loadn r0, #v_cartas_usadas  ; posicao inicial
	loadn r1, #0 ; carta_sorteada (acumulador)
	loadn r4, #0
	dec r1
	dec r4
	
	loop_escolhe_carta:
		dec r2
		
		loadi r3, r0  ; carta usada
		
		add r2, r2, r3
		
		inc r0 ; proxima carta do vet
		inc r1 ; carta sorteada
		
		cmp r2, r4
		jne loop_escolhe_carta
	
	store carta_sorteada, r1
	
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
		
	rts
	
start_game:;desenhos das primeiras cartas
	
	push r0									;irá receber os endereços iniciais das cartas para realizar o desenho das mesmas
	push r1									;flag para ver para quem será a nova carta
	
	loadn r0, #881
	store endereco_base, r0					;endereco inicial da carta
	loadn r0, #1
	store flag_de_decisao, r0				;enquanto = 1 player joga
	
	call Jogada								
	call Jogada								; gera as duas primeiras cartas do player
		
	loadn r0, #41
	store endereco_base, r0
	loadn r0, #1
	store flag_de_jogada, r0				; flag = 0 para setar a primeira carta do bot
		
	call Jogada								; imprime a carta do bot
	
	pop r1
	pop r0
	rts
	
delaygrande:;delay que consiste em um loop infinito
				
	push r0
	push r1
	
	loadn r1, #2000							 ;g;;
	  
    	delay_volta2:
    			
			loadn r0, #5000
			
    	delay_volta:
	    	 
			dec r0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
			jnz delay_volta	
			dec r1
			jnz delay_volta2
		
	pop r1
	pop r0
		
		rts
		
Jogada:;movimentação + valor da carta 

	call AnimaCarta					;animação da carta até sua posição
	call IdentificaCarta			;função que determina o valor da carta
	
	rts

IdentificaCarta:;Valor da carta e seu naipe

	push r0                 ; será usado como parâmetro de comparação
	push r1                 ; receberá a carta revelada
	push r2					; guarda o símbolo que será impresso
	push r3					; posição da tela onde será impresso o símbolo
	push r4					; valor do endereço base
	push r5					; vale 41
	push r6					; vale 81
	push r7					; é usado para importar os valores para as operações

	loadn r1, #v_cartas_sorteadas
	load r2, ind_vetor_cartas_sorteadas
	add r1, r1, r2
	inc r2
	store ind_vetor_cartas_sorteadas, r2
	store carta_sorteada, r1

	load r1, carta_sorteada
	loadi r1, r1
	load r4, endereco_base
	loadn r5, #41
	loadn r6, #81
	loadn r7, #4
	
	div r1, r1, r7

	; Case 1
		loadn r0, #0
		cmp r1, r0	; Se div(carta) == 0, então é Ás
		jne Compara_Carta2
		call Valor_Carta
		loadn r2, #'A'
		add r3, r4, r5 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Naipe	; Break do Switch

	Compara_Carta2:
		loadn r0, #9
		cmp r1, r0	; Se div(carta) == 9, então é 10
		jne Compara_Carta3
		call Valor_Carta
		loadn r2, #'1'
		add r3, r4, r5 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		loadn r2, #'0'
		loadn r7, #42
		add r3, r4, r7 ; Calcula a posição correta para imprimir o símbolo -- ARRUMAR
		outchar r2, r3
		jmp Compara_Naipe	; Break do Switch

	Compara_Carta3:
		loadn r0, #10
		cmp r1, r0	; Se div(carta) == 10, então é uma Dama (Q)
		jne Compara_Carta4
		call Valor_Carta
		loadn r2, #'Q'
		add r3, r4, r5 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Naipe	; Break do Switch
		
	Compara_Carta4:
		loadn r0, #11
		cmp r1, r0	; Se div(carta) == 11, então é um Valete (J)
		jne Compara_Carta5
		call Valor_Carta
		loadn r2, #'J'
		add r3, r4, r5 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Naipe	; Break do Switch

	Compara_Carta5:
		loadn r0, #12
		cmp r1, r0	; Se div(carta) == 12, então é um Rei (K)
		jne Compara_Carta6
		call Valor_Carta
		loadn r2, #'K'
		add r3, r4, r5 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Naipe	; Break do Switch

	Compara_Carta6:  ; Se a carta nao é nenhum dos casos anteriores, então ela é um número normal, que pode ser impresso somando 49
		call Valor_Carta
		loadn r7, #49
		add r2, r1, r7 ; Calcula o número a ser impresso
		add r3, r4, r5 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3	
	
	Compara_Naipe:
	
	load r1, carta_sorteada
	loadi r1, r1
	loadn r7, #4
	mod r1, r1, r7
	
	; Case 1
		loadn r0, #0
		cmp r1, r0	; Se mod(carta) == 0, então a carta é de copas
		jne Compara_Naipe2
		loadn r2, #20  ; Carrega o símbolo de copas
		add r3, r4, r6 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Fim	; Break do Switch

	Compara_Naipe2:
		loadn r0, #1
		cmp r1, r0	; Se mod(carta) == 1, então a carta é de espadas
		jne Compara_Naipe3
		loadn r2, #23  ; Carrega o símbolo de espadas
		add r3, r4, r6 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Fim	; Break do Switch

	Compara_Naipe3:
		loadn r0, #2
		cmp r1, r0	; Se mod(carta) == 2, então a carta é de ouros
		jne Compara_Naipe4
		loadn r2, #21  ; Carrega o símbolo de ouros
		add r3, r4, r6 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		jmp Compara_Fim	; Break do Switch
		
	Compara_Naipe4: ; Se não é nenhum dos outros, a carta é de paus
		loadn r2, #22  ; Carrega o símbolo de paus
		add r3, r4, r6 ; Calcula a posição correta para imprimir o símbolo
		outchar r2, r3
		
	Compara_Fim:
	
	loadn r3, #3
	add r4, r4, r3
	store endereco_base, r4
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

ImprimeCartas:;imprime cartas na posição correta
	
	;  Rotina de Impresao de Cenario na Tela Inteira
	;  r0 = endereço_base
	;  r1 = endereco
	;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r5 na pilha para ser usado na subrotina
	push r6 ; protege o r6 na pilha para usar como iterador
	push r7 ; protege o r7 para usar como limite

	load r0, endereco_base  ;posicao inicial tem que ser o comeco da tela!
	loadn r1, #cartaLinha0
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #7  	; incremento do ponteiro das linhas da tela
	loadn r5, #8
	loadn r6, #0

	
   ImprimeCarta_Loop:
		call ImprimeStr
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		inc r6
		cmp r6, r5			; Compara r0 com 1200
		jne ImprimeCarta_Loop	; Enquanto r0 < 1200

	pop r7
	pop r6
	pop r5	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

ImprimeStr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"

	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r2, #0
	loadn r3, #'\0'	; Criterio de parada

   ImprimeStr_Loop:	
		loadi r4, r1
		cmp r4, r3		; If (Char == \0)  vai Embora
		jeq ImprimeStr_Sai
		outchar r4, r0	; Imprime o caractere na tela
		inc r0			; Incrementa a posicao na tela
		inc r1			; Incrementa o ponteiro da String
		jmp ImprimeStr_Loop
	
   ImprimeStr_Sai:
   	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts

Valor_Carta:		; A Carta, se for menor ou igual a 10, para descobrir o valor basta dividir por quatro e somar 1, nos outros casos, ela sempre vale 10

	push r0 ; Flag de quem está jogando
	push r1 ; Valor da Carta
	push r2	; Pontuação de quem está jogando
	push r3 ; Flag de Ás
	push r4 ; Vale 11, para comparação
	push r5 ; Comparador para soma total
	push r6 ; Comparador para carta
	push r7 ; Comparador para flags
	
	load r0, flag_de_jogada
	
	load r1, carta_sorteada
	loadi r1, r1
	loadn r2, #4
	div r1, r1, r2
	
	loadn r4, #11
	loadn r5, #21
	loadn r6, #8
	loadn r7, #0
	
	cmp r0, r7
	jne Valor_Carta_bot					;se for 1 eh o bot, se for 0 é o player
	
	Valor_Carta_player:
	load r3, flag_de_as_player
	load r2, soma_player
	cmp r1, r6
	jgr Valor_Carta_player_10			;se for 10, J, Q, K
	cmp r1, r7
	jeq Valor_Carta_player_As			; se for ÁS
	inc r1
	add r2, r1, r2
	store soma_player, r2
	jmp Valor_Carta_fim
	
		Valor_Carta_player_10:
		loadn r1, #10
		add r2, r1, r2
		store soma_player, r2
		jmp Valor_Carta_fim
	
		Valor_Carta_player_As:
		cmp r3, r7
		jeq Valor_Carta_player_as_naotem
		inc r2
		store soma_player, r2				;se o player ja tiver ÁS previamente, o ÁS novo terá que ser = 1
		jmp Valor_Carta_fim
		
			Valor_Carta_player_as_naotem:
			add r2, r4, r2
			cmp r2, r5
			jgr Valor_Carta_player_as_estoura		;se o player nao tiver as antes, e o valor estourar 21, o ÁS valerá 1
			loadn r7, #1
			store flag_de_as_player, r7				; seta o flag de ÁS para que os proximos ÁS a entrar tenham valor 1
			store soma_player, r2
			jmp Valor_Carta_fim

			Valor_Carta_player_as_estoura:			;deixa o valor de ÁS = 1 neste caso
			sub r2, r2, r4
			inc r2
			store soma_player, r2
			jmp Valor_Carta_fim
	
	Valor_Carta_bot: ; segue o mesmo procedimento realizado para as cartas do player
	load r3, flag_de_as_bot
	load r2, soma_bot
	cmp r1, r6
	jgr Valor_Carta_bot_10
	cmp r1, r7
	jeq Valor_Carta_bot_As
	inc r1
	add r2, r1, r2
	store soma_bot, r2
	jmp Valor_Carta_fim
	
		Valor_Carta_bot_10:
		loadn r1, #10
		add r2, r1, r2
		store soma_bot, r2
		jmp Valor_Carta_fim
	
		Valor_Carta_bot_As:
		cmp r3, r7
		jeq Valor_Carta_bot_as_naotem
		inc r2
		store soma_bot, r2
		jmp Valor_Carta_fim
		
			Valor_Carta_bot_as_naotem:
			add r2, r4, r2
			cmp r2, r5
			jgr Valor_Carta_bot_as_estoura
			loadn r7, #1
			store flag_de_as_bot, r7
			store soma_bot, r2
			jmp Valor_Carta_fim

			Valor_Carta_bot_as_estoura:
			sub r2, r2, r4
			inc r2
			store soma_bot, r2
			jmp Valor_Carta_fim
			
	Valor_Carta_fim:
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

Aposta:;tela de aposta

	push r0 ;			receberá a tecla(quantia apostada)
	push r1 ; 
	push r2	;			recebe o "valor" da aposta
	push r3 ; 			recebe o "valor" da aposta
	push r4 ; 			recebe o "valor" da aposta
	push r5 ; 			recebe o "valor" da aposta
	push r6 ;
	
	loadn r0, #520
	loadn r1, #fraseaposta			;"quanto voce quer apostar"
	call ImprimeStr
	loadn r0, #600
	loadn r1, #valoresaposta		;string que mostra os valores das apostas
	call ImprimeStr
	loadn r0, #640
	loadn r1, #valoersaposta2		;mostra os demais valores da aposta
	call ImprimeStr
	call ImprimeDinheiro
		
	loadn r0, #255
	loadn r1, #'n'
	loadn r2, #'a'
	loadn r3, #'s'
	loadn r4, #'d'
	loadn r5, #'f'
	
	loop_aposta:
		inchar r0
		cmp r0, r1
		jeq loop_aposta_sair			;caso tecle "n"
		cmp r0, r2
		jeq loop_aposta_10				;caso tecle "a"
		cmp r0, r3
		jeq loop_aposta_20				;caso tecle "s"
		cmp r0, r4
		jeq loop_aposta_50				;caso tecle "d"
		cmp r0, r5
		jeq loop_aposta_100				;caso tecle "f"
		jmp loop_aposta
		
		loop_aposta_sair:
			jmp End_game				;se teclar "n" sai do casino e o jogo acaba
			
		loop_aposta_10:
			loadn r5, #10
			load r6, dinheiro
			cmp r5, r6
			jeg loop_aposta_All			; se 10 for >= dinheiro, a aposta será igual ao dinheiro que o player tem
			store aposta, r5
			sub r6, r6, r5
			store dinheiro, r6
			jmp Aposta_Fim
			
		loop_aposta_20:
			loadn r5, #20
			load r6, dinheiro
			cmp r5, r6
			jeg loop_aposta_All			; se 20 for >= dinheiro, a aposta será igual ao dinheiro que o player tem
			store aposta, r5
			sub r6, r6, r5
			store dinheiro, r6
			jmp Aposta_Fim
			
		loop_aposta_50:	
			loadn r5, #50
			load r6, dinheiro
			cmp r5, r6
			jeg loop_aposta_All			; se 50 for >= dinheiro, a aposta será igual ao dinheiro que o player tem
			store aposta, r5
			sub r6, r6, r5
			store dinheiro, r6
			jmp Aposta_Fim
						
		loop_aposta_100:	
			loadn r5, #100
			load r6, dinheiro
			cmp r5, r6
			jeg loop_aposta_All			; se 100 for >= dinheiro, a aposta será igual ao dinheiro que o player tem
			store aposta, r5
			sub r6, r6, r5
			store dinheiro, r6
			jmp Aposta_Fim
			
		loop_aposta_All:	
			load r6, dinheiro
			store aposta, r6
			sub r6, r6, r6
			store dinheiro, r6
			jmp Aposta_Fim
			
	Aposta_Fim: ; apagar as strings p n interferir 
	
	loadn r0, #520
	loadn r1, #apagalinha
	call ImprimeStr
	loadn r0, #600
	loadn r1, #apagalinha
	call ImprimeStr
	loadn r0, #640
	loadn r1, #apagalinha
	call ImprimeStr
	loadn r0, #1172
	loadn r1, #apagalinha
	call ImprimeStr
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
		
	rts
	
Decide:; decide se comprará mais uma carta
	push r0 ; 
	push r1 ; 
	push r2	;
	push r3
	
	loadn r0, #520					;endereço base
	loadn r1, #decisao				;string
	call ImprimeStr
	loadn r0, #600					;endereço base
	loadn r1, #decisao2				;string
	call ImprimeStr
	
	
	loadn r0, #255
	loadn r1, #'s'
	loadn r2, #'n'
	
	loop_Decide:; enquanto nao apertar 's' ou 'n', fica nesse loop
		inchar r0
		cmp r0, r1			;caso queira mais uma carta
		jeq Decide_sim
		cmp r0, r2			;caso nao queira
		jeq Decide_nao
		jmp loop_Decide

		Decide_sim:
			loadn r3, #0
			store flag_de_decisao, r3		;salva a decisao do player
			jmp Decide_Fim
		
		Decide_nao:
			loadn r3, #1
			store flag_de_decisao, r3		;salva a decisao do player
			jmp Decide_Fim
			
	Decide_Fim:; apaga as linhas utilizadas
	
	loadn r0, #520
	loadn r1, #apagalinha
	call ImprimeStr
	loadn r0, #600
	loadn r1, #apagalinha
	call ImprimeStr
	
	pop r3	
	pop r2
	pop r1
	pop r0
		
	rts

VoceEstourou:; quando você estoura
	
	push r0			;endereço de impressão
	push r1			;string a ser impressa
	push r2			;flag de ÁS
	push r3			;comparador
	push r4			;recebe a soma player
	push r5			; recebe 10 para realizar operações caso necessario
	
	load r2, flag_de_as_player
	loadn r3, #1
	
	cmp r2, r3			
	jeq VoceEstourou_mastinhaas			;se tiver ÁS é tratado especialmente
	jmp Estourodeverdade
	
	VoceEstourou_mastinhaas:			;se o player estourou, mas tinha um ÁS em sua manga, o ÁS deixa de valer 11 e passa a valer
		loadn r3, #0
		store flag_de_as_player, r3
		load r4, soma_player
		loadn r5, #10
		sub r4, r4, r5
		store soma_player, r4
		jmp loop_Jogada_Player
	
	Estourodeverdade:					;se o player estourou, mas não tinha ÁS, ele estourou de verdade
		
	loadn r0, #600
	loadn r1, #cabum
	call ImprimeStr
	call delaygrande
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	jmp main_loop

VoceBateu:;quando voce bate 21 direto
	
	push r0			;endereco onde a string será impressa
	push r1			;string
	push r2			;recebe o valor apostado
	push r3			;recebe o dinheiro
	
	loadn r0, #600
	loadn r1, #bateu
	call ImprimeStr
	
	load r2, aposta
	load r3, dinheiro
	add r3, r3, r2
	add r3, r3, r2
	store dinheiro, r3
	
	call delaygrande
	
	pop r3
	pop r2
	pop r1
	pop r0

	jmp main_loop

VoceGanhou:; verifica se voce ganhou 

	push r0			;endereco onde a string será impressa
	push r1			;string
	push r2			;flag de ÁS
	push r3			;comparador de flag
	push r4			;recebe a soma bot
	push r5			; recebe o 10
	
	load r2, flag_de_as_bot
	loadn r3, #1
	
	cmp r2, r3
	jeq obotEstourou_mastinhaas
	jmp obotEstourodeverdade
	
	obotEstourou_mastinhaas:					;recebe o mesmo raciocínio do playerestourou_mastinhaAS
		loadn r3, #0
		store flag_de_as_bot, r3
		load r4, soma_bot
		loadn r5, #10
		sub r4, r4, r5
		store soma_bot, r4
		jmp loop_Jogada_Bot
	
	obotEstourodeverdade:
	load r2, aposta
	load r3, dinheiro
	add r3, r3, r2
	add r3, r3, r2
	store dinheiro, r3
	
	loadn r0, #600
	loadn r1, #ganhou
	call ImprimeStr
	
	call delaygrande
	
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	jmp main_loop

Obotganhou:; quando o bot ganha

	push r0		;endereco onde a string será impressa
	push r1		;string
	
	loadn r0, #600
	loadn r1, #perdeu
	call ImprimeStr
	
	call delaygrande
	
	pop r1
	pop r0
	
	jmp main_loop

ApagaTela:; apaga a tela

	push r0
	push r1
	
	loadn r0, #1200		; apaga as 1200 posicoes da Tela
	loadn r1, #' '		; com "espaco"
	
	   ApagaTela_Loop:	;;label for(r0 = 1200 ;r3>0;r3--)
		dec r0
		outchar r1, r0
		jnz ApagaTela_Loop
 
	pop r1
	pop r0
	rts	

delayanimacao:; movimentação das cartas
				
	push r0
	push r1
	
	loadn r1, #25
	  
    	delay_volta2:
    			
			loadn r0, #300
			
    	delay_volta:
	    	 
			dec r0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
			jnz delay_volta	
			dec r1
			jnz delay_volta2
		
	pop r1
	pop r0
		
	rts

delaycurto:; delay de transição entre fim do jogo e embaralhar novamente
				
	push r0
	push r1
	
	loadn r1, #400
	  
    	delay_volta2:
    			
			loadn r0, #300
			
    	delay_volta:
	    	 
			dec r0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
			jnz delay_volta	
			dec r1
			jnz delay_volta2
		
	pop r1
	pop r0
		
	rts

AnimaCarta:;movimentação das cartas

	push r0					;flag de jogada(saber para quem será a carta gerada)
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	load r0, flag_de_jogada
	loadn r1, #0
	loadn r2, #510
	loadn r4, #40
	loadn r5, #1

	load r7, endereco_base
	
	cmp r0, r1				;compara se quem ta comprando é o player ou bot(movimentar carta para baixo ou para cima)
	jne AnimaCarta_bot
	
	AnimaCarta_player:
	
	loadn r3, #910
	
		AnimaCarta_player_desce:			;movimento para baixo da carta
			add r2, r2, r4					;linha de baixo
			store endereco_base, r2			;novo endereço
			call ImprimeCartas				;imprime o bolo
			call delayanimacao				
			call ApagaCarta					;apagar posição antiga
			call Imprime_Cenario			; manter configuração original
			cmp r3, r2						;endereço de parada
			jne AnimaCarta_player_desce		;enquanto nao chegar la, continua descendo
			
			call Imprime_Cenario			;manter cenário original
		AnimaCarta_player_lado:
			call ApagaCarta					;apagar posição antiga
			sub r2, r2, r5					;movimentar a carta para o lado
			store endereco_base, r2			;atualiza o endereço
			call ImprimeCartas				; imprime a carta na posição nova
			call delayanimacao

			cmp r2, r7						;posição final da carta
			jne AnimaCarta_player_lado
			jmp AnimaCarta_fim
			
	AnimaCarta_bot:; segue o mesmo procedimento do player, em vez de descer, a carta deve subir
	
	loadn r3, #70
	
		AnimaCarta_bot_sobe:
			sub r2, r2, r4
			store endereco_base, r2
			call ImprimeCartas
			call delayanimacao
			call ApagaCarta
			call Imprime_Cenario
			cmp r3, r2
			jne AnimaCarta_bot_sobe
			
			call Imprime_Cenario
		AnimaCarta_bot_lado:
			call ApagaCarta
			sub r2, r2, r5
			store endereco_base, r2
			call ImprimeCartas
			call delayanimacao
			cmp r2, r7
			jne AnimaCarta_bot_lado
			jmp AnimaCarta_fim
			
	AnimaCarta_fim:
	
	store endereco_base, r7				;voltar ao valor original
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	rts

ApagaCarta:; apaga a carta

	push r0			;recebe o endereço base
	push r1			; recebe o caracter SPACE para apagar o cenário
	push r2			; recebe a posição da linha que será apagada 
	push r3			;recalcula a posição a ser apagada
	push r4			;limite horizontal do tamanho da carta
	push r5			; recebe qual linha está apagando
	push r6			;limite vertical do tamanho da carta
	

	load r0, endereco_base
	loadn r1, #' '		; com "espaco"
	loadn r3, #34
	loadn r4, #6
	loadn r5, #0
	loadn r6, #8
	
	ApagaCarta_Loop:
	
	loadn r2, #0
		
		ApagaCarta_Loop_Linha:
		outchar r1, r0
		inc r0
		inc r2
		cmp r2, r4
		jne ApagaCarta_Loop_Linha
	
	add r0, r0, r3
	inc r5
	cmp r5, r6
	jne ApagaCarta_Loop				;apagar a carta inteira
	
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
Imprime_Cenario:; cenário de distribuição das cartas
	
	push r0
	push r1
	push r2
	push r3
	push r4
	
	loadn r0, #761				;endereco inicial
	loadn r1, #suascartas		;string
	call ImprimeStr
	
	loadn r1, #510
	load r2, endereco_base
	store endereco_base, r1		;parâmetros para imprimir uma carta
	call ImprimeCartas			;imprime o bolo inteiro
	store endereco_base, r2		;
	
	loadn r0, #829
	loadn r1, #11
	outchar r1, r0
	
	loadn r0, #835
	loadn r1, #14
	outchar r1, r0
	
	loadn r0, #509
	loadn r1, #13
	outchar r1, r0
	
	loadn r1, #12
	loadn r3, #40
	loadn r4, #789
	Imprime_Cenario_Coluna:
		add r0, r0, r3
		outchar r1, r0
		cmp r0, r4
		jne Imprime_Cenario_Coluna
	
	loadn r0, #829
	loadn r1, #10
	loadn r4, #834
	Imprime_Cenario_Linha:
		inc r0
		outchar r1, r0
		cmp r0, r4
		jne Imprime_Cenario_Linha

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	rts
	
printInicioScreen:; printa a tela inicial
  push r0			;recebe a variável inicio
  push r1			;recebe endereco inicial
  push r2			;condicao de parada (posição que nao pode escrever)
  push r3			; receberá os caracteres da variavel a serem impressos

  loadn r0, #Inicio
  loadn r1, #0
  loadn r2, #1200

  printInicioScreenLoop:

    add r3,r0,r1
    loadi r3, r3
    outchar r3, r1
    inc r1
    cmp r1, r2

    jne printInicioScreenLoop

  pop r3
  pop r2
  pop r1
  pop r0
  rts

Embaralha:;decide qual tela de baralho irá imprimir

	push r0			;recebe 4 (4 telas de embaralhamento)
	push r1			;recebe o estagio do baralho (cada vez que aperta enter, é incrementado)
	push r2			; parâmetro de comparação
	
	loadn r0, #4
	load r1, estagio_baralho
	mod r1, r1, r0
	
	;Case 1
		loadn r2, #0
		cmp r1, r2	; Se mod(estagio) == 0, entao embaralha é a tela 1
		jne Embaralha_Estagio_2
		call ApagaTela
		call Embaralha1
		jmp Embaralha_Fim	; Break do Switch
	
	Embaralha_Estagio_2:
		loadn r2, #1
		cmp r1, r2	; Se mod(estagio) == 1, entao embaralha é a tela 2
		jne Embaralha_Estagio_3
		call ApagaTela
		call Embaralha2
		jmp Embaralha_Fim	; Break do Switch
		
	Embaralha_Estagio_3:
		loadn r2, #2
		cmp r1, r2	; Se mod(estagio) == 2, entao embaralha é a tela 3
		jne Embaralha_Estagio_4
		call ApagaTela
		call Embaralha3
		jmp Embaralha_Fim	; Break do Switch
		
	Embaralha_Estagio_4:
		call ApagaTela
		call Embaralha4
		jmp Embaralha_Fim	; Break do Switch
		
	Embaralha_Fim:
	
	pop r2
	pop r1
	pop r0

	rts

Embaralha1:; tela de embaralhamento

		push r0				;recebe os endereços
		push r1				; caracter da vez a ser impresso
		push r2				;recebe o endereço base
		push r3				; pular de linha
		push r4				; condição de parada
		
		loadn r0, #6					;posição inicial para printar
		loadn r1, #eoembaralhas			;string "aperte enter para embaralhar"
		call ImprimeStr					;imprime a string
		
		loadn r1, #497 
		load r2, endereco_base			
		store endereco_base, r1
		call ImprimeCartas				;imprime a carta de cima do bolo. Os próximos blocos de comando desenham as cartas de baixo
		store endereco_base, r2
		
		loadn r0, #816 
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #822 
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #496 
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #776 
		Embaralha1_Coluna:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha1_Coluna
		
		loadn r0, #816 
		loadn r1, #10
		loadn r4, #821 
		Embaralha1_Linha:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha1_Linha
			
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0
		
		rts
		
Embaralha2:;segue mesmo padrao do embaralha1

		push r0				
		push r1				
		push r2				
		push r3				
		push r4				
		
		loadn r0, #6					
		loadn r1, #eoembaralhas			
		call ImprimeStr					
		
		
		loadn r1, #575 
		load r2, endereco_base
		store endereco_base, r1
		call ImprimeCartas
		store endereco_base, r2
		
		loadn r0, #894 
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #900 
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #574 
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #854 
		Embaralha2_Coluna_1:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha2_Coluna_1
		
		loadn r0, #894 
		loadn r1, #10
		loadn r4, #899 
		Embaralha2_Linha_1:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha2_Linha_1
		
		
		
		loadn r1, #419
		load r2, endereco_base
		store endereco_base, r1
		call ImprimeCartas
		store endereco_base, r2
		
		loadn r0, #738 
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #744 
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #418 
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #698 
		Embaralha2_Coluna_2:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha2_Coluna_2
		
		loadn r0, #738 
		loadn r1, #10
		loadn r4, #743 
		Embaralha2_Linha_2:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha2_Linha_2
			
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0
		
		rts

Embaralha3:;segue mesmo padrao do embaralha1

		push r0
		push r1
		push r2
		push r3
		push r4
		
		loadn r0, #6
		loadn r1, #eoembaralhas
		call ImprimeStr
		
		loadn r1, #653 ; 510
		load r2, endereco_base
		store endereco_base, r1
		call ImprimeCartas
		store endereco_base, r2
		
		loadn r0, #972 ; 829
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #978 ; 835
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #652 ; 509
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #932 ; 789
		Embaralha3_Coluna_1:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha3_Coluna_1
		
		loadn r0, #972 ; 829
		loadn r1, #10
		loadn r4, #977 ; 834
		Embaralha3_Linha_1:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha3_Linha_1
		
		
		
		loadn r1, #341 ; 510
		load r2, endereco_base
		store endereco_base, r1
		call ImprimeCartas
		store endereco_base, r2
		
		loadn r0, #660 ; 829
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #666 ; 835
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #340 ; 509
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #620 ; 789
		Embaralha3_Coluna_2:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha3_Coluna_2
		
		loadn r0, #660 ; 829
		loadn r1, #10
		loadn r4, #665 ; 834
		Embaralha3_Linha_2:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha3_Linha_2
			
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0
		
		rts	
		
Embaralha4:;segue mesmo padrao do embaralha1

		push r0
		push r1
		push r2
		push r3
		push r4
		
		loadn r0, #6
		loadn r1, #eoembaralhas
		call ImprimeStr
		
		loadn r1, #419 ; 510
		load r2, endereco_base
		store endereco_base, r1
		call ImprimeCartas
		store endereco_base, r2
		
		loadn r0, #738 ; 829
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #744 ; 835
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #418 ; 509
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #698 ; 789
		Embaralha4_Coluna_1:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha4_Coluna_1
		
		loadn r0, #738 ; 829
		loadn r1, #10
		loadn r4, #743 ; 834
		Embaralha4_Linha_1:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha4_Linha_1
		
		
		
		loadn r1, #575 ; 510
		load r2, endereco_base
		store endereco_base, r1
		call ImprimeCartas
		store endereco_base, r2
		
		loadn r0, #894 ; 829
		loadn r1, #11
		outchar r1, r0
		
		loadn r0, #900 ; 835
		loadn r1, #14
		outchar r1, r0
		
		loadn r0, #574 ; 509
		loadn r1, #13
		outchar r1, r0
		
		loadn r1, #12
		loadn r3, #40
		loadn r4, #854 ; 789
		Embaralha4_Coluna_2:
			add r0, r0, r3
			outchar r1, r0
			cmp r0, r4
			jne Embaralha4_Coluna_2
		
		loadn r0, #894 ; 829
		loadn r1, #10
		loadn r4, #899 ; 834
		Embaralha4_Linha_2:
			inc r0
			outchar r1, r0
			cmp r0, r4
			jne Embaralha4_Linha_2
			
		pop r4
		pop r3
		pop r2
		pop r1
		pop r0
		
		rts	

ImprimeDinheiro:; imprime valores com mais de 3 digitos

	push r0			; numero a imprimir -- DESCARREGUE AQUI SEU VALOR
	push r1			; divisor  -- Voce pode escolher outra base ao invés da decimal - Bases maiores que 10 (em decimal) printarao outros caracteres
	push r2			;indice
	push r3			; recebe a posição do algarismo menos significativo do numero
	push r4			; r4 -- valor a ser printado
	push r5			;condição de parada
	push r6			;recebe 48 para realizar operações com a tabela ascii
	push r7			
	
	load r0, dinheiro
	loadn r1, #10
	loadn r2, #0
	loadn r3, #1199
	loadn r5, #0
	loadn r6, #48
	
	ImprimeDinheiro_Loop:
		
		mod r4, r0, r1
		div r0, r0, r1
		
		add r7, r4, r6			;valor+tabelaascii para obter o valor desejado
		outchar r7, r3
		dec r3
		
		cmp r0, r5
		jne ImprimeDinheiro_Loop
		
	loadn r7, #'$'
	outchar r7, r3				;fazer referência que é o dinheiro
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	
	rts
			
Aperteenter:;quando precisa apertar enter (início do jogo/embaralhar)

	push r0
	push r1
	
	loadn r0, #255
	loadn r1, #13
	
	loop_Aperteenter:			;cria um loop até o jogador apertar enter
		inchar r0
		cmp r0, r1
		jeq Aperteenter_sair
		jmp loop_Aperteenter
		
	Aperteenter_sair:
	pop r1
	pop r0
	
	rts
	