; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    Grace.s                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2025/01/28 ??:??:?? by hdeniz            #+#    #+#              ;
;    Updated: 2025/02/06 ??:??:?? by hdeniz           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

BITS 64

%DEFINE _NAME "Grace_kid.s"
%DEFINE _SRC "; **************************************************************************** ;%1$c;                                                                              ;%1$c;                                                         :::      ::::::::    ;%1$c;    Grace.s                                            :+:      :+:    :+:    ;%1$c;                                                     +:+ +:+         +:+      ;%1$c;    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         ;%1$c;                                                 +#+#+#+#+#+   +#+            ;%1$c;    Created: 2025/01/28 ??:??:?? by hdeniz            #+#    #+#              ;%1$c;    Updated: 2025/02/06 ??:??:?? by hdeniz           ###   ########.fr        ;%1$c;                                                                              ;%1$c; **************************************************************************** ;%1$c%1$cBITS 64%1$c%1$c%%DEFINE _NAME %2$cGrace_kid.s%2$c%1$c%%DEFINE _SRC %2$c%3$s%2$c%1$cSECTION .data%1$c	NAME: DB _NAME, 0%1$c	SRC: DB _SRC, 0%1$c	WRITE_MODE: DB %2$cw%2$c, 0%1$c%1$cSECTION .text%1$c	%%MACRO RUN 0%1$c	GLOBAL main%1$c	EXTERN fprintf%1$c	EXTERN fopen%1$c	EXTERN fclose%1$c%1$cmain:%1$c	PUSH RBP%1$c	MOV RBP, RSP%1$c%1$c	MOV RDI, NAME%1$c	MOV RSI, WRITE_MODE%1$c	CALL fopen%1$c	CMP RAX, 0%1$c	JE EXIT%1$c%1$c	MOV RBX, RAX%1$c	MOV RDI, RBX%1$c	MOV RSI, SRC%1$c	MOV RDX, 10%1$c	MOV RCX, 34%1$c	MOV R8, SRC%1$c	CALL fprintf%1$c%1$c	MOV RDI, RBX%1$c	CALL fclose%1$c%1$cEXIT:%1$c	MOV RAX, 60%1$c	XOR RDI, RDI%1$c	POP RBP%1$c	SYSCALL%1$c%1$cERR_EXIT:%1$c	MOV RAX, 60%1$c	MOV RDI, 1%1$c	POP RBP%1$c	SYSCALL%1$c%%ENDMACRO%1$c%1$c; See my kid !%1$c%1$cRUN%1$c"
SECTION .data
	NAME: DB _NAME, 0
	SRC: DB _SRC, 0
	WRITE_MODE: DB "w", 0

SECTION .text
	%MACRO RUN 0
	GLOBAL main
	EXTERN fprintf
	EXTERN fopen
	EXTERN fclose

main:
	PUSH RBP
	MOV RBP, RSP

	MOV RDI, NAME
	MOV RSI, WRITE_MODE
	CALL fopen
	CMP RAX, 0
	JE EXIT

	MOV RBX, RAX
	MOV RDI, RBX
	MOV RSI, SRC
	MOV RDX, 10
	MOV RCX, 34
	MOV R8, SRC
	CALL fprintf

	MOV RDI, RBX
	CALL fclose

EXIT:
	MOV RAX, 60
	XOR RDI, RDI
	POP RBP
	SYSCALL

ERR_EXIT:
	MOV RAX, 60
	MOV RDI, 1
	POP RBP
	SYSCALL
%ENDMACRO

; See my kid !

RUN
