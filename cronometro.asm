ORG 0000h
MOV DPTR, #SEGMENTS ; Coloca a tabela de segmentos em DPTR

ORG 0033h

INIT:
; Verifica se SW0 está pressionado para iniciar a contagem
JNB P2.0, START
; Caso SW0 não seja pressionado, espera em loop até que seja
JMP INIT

START:
; Reseta a contagem para zero
MOV R2, #00

LOOP:
; Carrega o valor de R2 no acumulador para obter o segmento correspondente
MOV A, R2
; Busca o valor do segmento na tabela para o número em A
MOVC A, @A+DPTR
; Envia o valor do segmento para a porta P1 para exibir no display
MOV P1, A

    ; Incrementa o valor de R2 para o próximo número
    INC R2
    ; Se R2 ainda não atingiu 10 (dez segmentos), continua a contagem
    CJNE R2, #10, LOOP

    ; Recomeça a contagem do zero
    JMP START

CHECK_DELAY:
; Verifica se o SW0 está pressionado para um delay de 0,25s
JNB P2.0, DELAY1
; Verifica se o SW1 está pressionado para um delay de 1s
JNB P2.1, DELAY2
; Se nenhum botão for pressionado, continua verificando
JMP CHECK_DELAY

DELAY1:
; Configura um delay de 0,25s
MOV R1, #250
SJMP DELAY_LOOP

DELAY2:
; Configura um delay de 1s
MOV R1, #1000
SJMP DELAY_LOOP

DELAY_LOOP:
; Loop interno de delay
MOV R0, #250
DELAY_INNER_LOOP:
DJNZ R0, DELAY_INNER_LOOP
DJNZ R1, DELAY_LOOP
SJMP AFTER_DELAY

AFTER_DELAY:
; Verifica se já passou por todos os segmentos (0 a 9)
CJNE R2, #10, START
; Recomeça a contagem do zero
JMP START

; Tabela de segmentos para display de 7 segmentos
SEGMENTS:
db 0c0h
db 0f9h
db 0a4h
db 0b0h
db 99h
db 92h
db 82h
db 0f8h
db 80h
db 90h
