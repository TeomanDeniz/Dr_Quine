; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    Colleen.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2025/01/28 ??:??:?? by hdeniz            #+#    #+#              ;
;    Updated: 2025/02/06 ??:??:?? by hdeniz           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

BITS 64

SECTION .data
	CODE: DB "; **************************************************************************** ;%1$c;                                                                              ;%1$c;                                                         :::      ::::::::    ;%1$c;    Colleen.s                                          :+:      :+:    :+:    ;%1$c;                                                     +:+ +:+         +:+      ;%1$c;    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         ;%1$c;                                                 +#+#+#+#+#+   +#+            ;%1$c;    Created: 2025/01/28 ??:??:?? by hdeniz            #+#    #+#              ;%1$c;    Updated: 2025/02/06 ??:??:?? by hdeniz           ###   ########.fr        ;%1$c;                                                                              ;%1$c; **************************************************************************** ;%1$c%1$cBITS 64%1$c%1$cSECTION .data%1$c	CODE: DB %2$c%3$s%2$c%1$c%1$cSECTION .text%1$c	GLOBAL main%1$c	EXTERN printf%1$c	EXTERN fflush%1$c%1$c; Hey i'm outside !%1$c%1$cmain:%1$c	; Hey i'm inside !%1$c	JMP DISPLAY_CODE%1$c%1$cDISPLAY_CODE:%1$c	PUSH RBP%1$c	MOV RBP, RSP%1$c	MOV RDI, CODE%1$c	MOV RSI, 10%1$c	MOV RDX, 34%1$c	MOV RCX, CODE%1$c	CALL printf wrt ..plt%1$c	MOV RDI, 0%1$c	CALL fflush wrt ..plt%1$c	POP RBP%1$c	MOV RAX, 60%1$c	MOV RDI, 0%1$c	SYSCALL%1$c"

SECTION .text
	GLOBAL main
	EXTERN printf
	EXTERN fflush

; Hey i'm outside !

main:
	; Hey i'm inside !
	JMP DISPLAY_CODE

DISPLAY_CODE:
	PUSH RBP
	MOV RBP, RSP
	MOV RDI, CODE
	MOV RSI, 10
	MOV RDX, 34
	MOV RCX, CODE
	CALL printf wrt ..plt
	MOV RDI, 0
	CALL fflush wrt ..plt
	POP RBP
	MOV RAX, 60
	MOV RDI, 0
	SYSCALL
