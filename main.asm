.MODEL SMALL
.STACK 100H

.DATA
MSG DB 0DH,0AH,"==== Number System Converter ====$"
OPT1 DB 0DH,0AH,"1. Binary to Decimal$"
OPT2 DB 0DH,0AH,"2. Decimal to Binary$"
OPT3 DB 0DH,0AH,"3. Binary to Hex$"
OPT4 DB 0DH,0AH,"4. Decimal to Hex$"
OPT5 DB 0DH,0AH,"5. Decimal to Octal$"
OPT6 DB 0DH,0AH,"6. Binary to Octal$"
OPT7 DB 0DH,0AH,"7. Exit$"

PROMPT DB 0DH,0AH,"Enter choice (1-7): $"

BIN_MSG DB 0DH,0AH,"Enter binary: $"
DEC_MSG DB 0DH,0AH,"Enter decimal: $"

SHOW_DEC DB 0DH,0AH,"Decimal: $"
SHOW_BIN DB 0DH,0AH,"Binary: $"
SHOW_HEX DB 0DH,0AH,"Hex: $"
SHOW_OCT DB 0DH,0AH,"Octal: $"

NEWLINE DB 0DH,0AH,"$"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

; =========================
; MENU LOOP
; =========================

MENU:
    LEA DX,MSG
    MOV AH,9
    INT 21H

    LEA DX,OPT1
    INT 21H
    LEA DX,OPT2
    INT 21H
    LEA DX,OPT3
    INT 21H
    LEA DX,OPT4
    INT 21H
    LEA DX,OPT5
    INT 21H
    LEA DX,OPT6
    INT 21H
    LEA DX,OPT7
    INT 21H

    LEA DX,PROMPT
    INT 21H

    MOV AH,1
    INT 21H

    CMP AL,'1'
    JE BIN_TO_DEC
    CMP AL,'2'
    JE DEC_TO_BIN
    CMP AL,'3'
    JE BIN_TO_HEX
    CMP AL,'4'
    JE DEC_TO_HEX
    CMP AL,'5'
    JE DEC_TO_OCT
    CMP AL,'6'
    JE BIN_TO_OCT
    CMP AL,'7'
    JE EXIT

    JMP MENU

; =========================
; FUNCTIONS
; =========================

BIN_TO_DEC:
    LEA DX,BIN_MSG
    MOV AH,9
    INT 21H

    CALL READ_BIN

    LEA DX,SHOW_DEC
    MOV AH,9
    INT 21H

    MOV AX,BX
    CALL PRINT_DEC

    CALL PRINT_NEWLINE
    JMP MENU


DEC_TO_BIN:
    LEA DX,DEC_MSG
    MOV AH,9
    INT 21H

    CALL READ_DEC

    LEA DX,SHOW_BIN
    MOV AH,9
    INT 21H

    MOV SI,2
    CALL PRINT_BASE

    CALL PRINT_NEWLINE
    JMP MENU


DEC_TO_HEX:
    LEA DX,DEC_MSG
    MOV AH,9
    INT 21H

    CALL READ_DEC

    LEA DX,SHOW_HEX
    MOV AH,9
    INT 21H

    MOV SI,16
    CALL PRINT_BASE

    CALL PRINT_NEWLINE
    JMP MENU


DEC_TO_OCT:
    LEA DX,DEC_MSG
    MOV AH,9
    INT 21H

    CALL READ_DEC

    LEA DX,SHOW_OCT
    MOV AH,9
    INT 21H

    MOV SI,8
    CALL PRINT_BASE

    CALL PRINT_NEWLINE
    JMP MENU


BIN_TO_HEX:
    LEA DX,BIN_MSG
    MOV AH,9
    INT 21H

    CALL READ_BIN

    LEA DX,SHOW_HEX
    MOV AH,9
    INT 21H

    MOV SI,16
    CALL PRINT_BASE

    CALL PRINT_NEWLINE
    JMP MENU


BIN_TO_OCT:
    LEA DX,BIN_MSG
    MOV AH,9
    INT 21H

    CALL READ_BIN

    LEA DX,SHOW_OCT
    MOV AH,9
    INT 21H

    MOV SI,8
    CALL PRINT_BASE

    CALL PRINT_NEWLINE
    JMP MENU


EXIT:
    MOV AH,4CH
    INT 21H

MAIN ENDP


; =========================
; PROCEDURES
; =========================

READ_DEC PROC
    MOV BX,0
RD1:
    MOV AH,1
    INT 21H
    CMP AL,0DH
    JE RD_DONE

    SUB AL,'0'
    MOV AH,0
    PUSH AX

    MOV AX,BX
    MOV CX,10
    MUL CX

    POP DX
    ADD AX,DX
    MOV BX,AX

    JMP RD1

RD_DONE:
    RET
READ_DEC ENDP


READ_BIN PROC
    MOV BX,0
RB1:
    MOV AH,1
    INT 21H
    CMP AL,0DH
    JE RB_DONE

    SUB AL,'0'
    SHL BX,1
    ADD BL,AL

    JMP RB1

RB_DONE:
    RET
READ_BIN ENDP


PRINT_BASE PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    MOV AX,BX
    MOV CX,0

PB1:
    XOR DX,DX
    DIV SI
    PUSH DX
    INC CX
    CMP AX,0
    JNE PB1

PB2:
    POP DX
    CMP DL,9
    JBE DIGIT
    ADD DL,7
DIGIT:
    ADD DL,'0'
    MOV AH,2
    INT 21H
    LOOP PB2

    POP DX
    POP CX
    POP BX
    POP AX
    RET
PRINT_BASE ENDP


PRINT_DEC PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    MOV BX,10
    MOV CX,0

PD1:
    XOR DX,DX
    DIV BX
    PUSH DX
    INC CX
    CMP AX,0
    JNE PD1

PD2:
    POP DX
    ADD DL,'0'
    MOV AH,2
    INT 21H
    LOOP PD2

    POP DX
    POP CX
    POP BX
    POP AX
    RET
PRINT_DEC ENDP


PRINT_NEWLINE PROC
    LEA DX,NEWLINE
    MOV AH,9
    INT 21H
    RET
PRINT_NEWLINE ENDP


END MAIN
