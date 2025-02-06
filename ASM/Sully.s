; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    Sully.s                                            :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2025/01/28 ??:??:?? by hdeniz            #+#    #+#              ;
;    Updated: 2025/02/06 ??:??:?? by hdeniz           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

BITS 64

SECTION .data
	INFO:	DB "; **************************************************************************** ;%1$c;                                                                              ;%1$c;                                                         :::      ::::::::    ;%1$c;    Sully.s                                            :+:      :+:    :+:    ;%1$c;                                                     +:+ +:+         +:+      ;%1$c;    By: hdeniz <Discord:@teomandeniz>              +#+  +:+       +#+         ;%1$c;                                                 +#+#+#+#+#+   +#+            ;%1$c;    Created: 2025/01/28 ??:??:?? by hdeniz            #+#    #+#              ;%1$c;    Updated: 2025/02/06 ??:??:?? by hdeniz           ###   ########.fr        ;%1$c;                                                                              ;%1$c; **************************************************************************** ;%1$c%1$cBITS 64%1$c%1$cSECTION .data%1$c	INFO:	DB %2$c%3$s%2$c,0%1$c	FILE:	DB %2$cSully_X.s%2$c,0%1$c	CMD:	DB %2$cnasm -f elf64 Sully_X.s; clang -Wall -Wextra -Werror -no-pie Sully_X.o -o Sully_X; ./Sully_X%2$c,0%1$c	ITER:	DB %4$d%1$c%1$c%%IFDEF WINDOWS_32%1$c	%%DEFINE OPEN _open%1$c	%%DEFINE CLOSE _close%1$c	%%DEFINE DPRINTF _dprintf%1$c	%%DEFINE CHMOD _chmod%1$c	%%DEFINE SYSTEM _system%1$c%%ELSE%1$c	%%DEFINE OPEN open%1$c	%%DEFINE CLOSE close%1$c	%%DEFINE DPRINTF dprintf%1$c	%%DEFINE CHMOD chmod%1$c	%%DEFINE SYSTEM system%1$c%%ENDIF%1$c%1$cSECTION .text%1$c	GLOBAL main%1$c	EXTERN OPEN%1$c	EXTERN CLOSE%1$c	EXTERN DPRINTF%1$c	EXTERN CHMOD%1$c	EXTERN SYSTEM%1$c%1$cmain:%1$c	PUSH RBP%1$c	MOV RBP, RSP%1$c%1$c	MOV RAX, [REL ITER]%1$c	SUB RAX, 1%1$c	CMP RAX, 47 ; IF VALUE IS LESS THEN 0, QUIT%1$c	JLE QUIT%1$c	MOV R9, RAX%1$c%1$c	LEA RDI, [REL FILE]%1$c	ADD RDI, 6%1$c	STOSB%1$c	LEA RDI, [REL CMD]%1$c	ADD RDI, 20%1$c	STOSB%1$c	ADD RDI, 46%1$c	STOSB%1$c	ADD RDI, 12%1$c	STOSB%1$c	ADD RDI, 10%1$c	STOSB%1$c%1$c	LEA RDI, [REL FILE]%1$c	MOV RSI, 0Q1101%1$c	CALL open%1$c%1$c	MOV R8, RAX ; TEMP MOVE FD TO R8%1$c	LEA RDI, [REL FILE]%1$c	MOV RSI, 0Q0777%1$c	CALL chmod%1$c%1$c	MOV RDI, R8%1$c	LEA RSI, [REL INFO]%1$c	MOV RDX, 10%1$c	MOV RCX, 34%1$c	LEA R8, [REL INFO]%1$c	CALL dprintf%1$c%1$c	CALL close%1$c%1$c	LEA RDI, [REL CMD]%1$c	CALL system%1$c%1$cQUIT:%1$c	POP RBP%1$c	MOV RAX, 0%1$c	RET%1$c%1$c%1$c; RDI 1ST %1$c; RSI 2ND%1$c; RDX 3RD%1$c; RCX 4TH%1$c; RAX RETURN VAL%1$c",0
	FILE:	DB "Sully_X.s",0
	CMD:	DB "nasm -f elf64 Sully_X.s; clang -Wall -Wextra -Werror -no-pie Sully_X.o -o Sully_X; ./Sully_X",0
	ITER:	DB 54

%IFDEF WINDOWS_32
	%DEFINE OPEN _open
	%DEFINE CLOSE _close
	%DEFINE DPRINTF _dprintf
	%DEFINE CHMOD _chmod
	%DEFINE SYSTEM _system
%ELSE
	%DEFINE OPEN open
	%DEFINE CLOSE close
	%DEFINE DPRINTF dprintf
	%DEFINE CHMOD chmod
	%DEFINE SYSTEM system
%ENDIF

SECTION .text
	GLOBAL main
	EXTERN OPEN
	EXTERN CLOSE
	EXTERN DPRINTF
	EXTERN CHMOD
	EXTERN SYSTEM

main:
	PUSH RBP
	MOV RBP, RSP

	MOV RAX, [REL ITER]
	SUB RAX, 1
	CMP RAX, 47 ; IF VALUE IS LESS THEN 0, QUIT
	JLE QUIT
	MOV R9, RAX

	LEA RDI, [REL FILE]
	ADD RDI, 6
	STOSB
	LEA RDI, [REL CMD]
	ADD RDI, 20
	STOSB
	ADD RDI, 46
	STOSB
	ADD RDI, 12
	STOSB
	ADD RDI, 10
	STOSB

	LEA RDI, [REL FILE]
	MOV RSI, 0Q1101
	CALL open

	MOV R8, RAX ; TEMP MOVE FD TO R8
	LEA RDI, [REL FILE]
	MOV RSI, 0Q0777
	CALL chmod

	MOV RDI, R8
	LEA RSI, [REL INFO]
	MOV RDX, 10
	MOV RCX, 34
	LEA R8, [REL INFO]
	CALL dprintf

	CALL close

	LEA RDI, [REL CMD]
	CALL system

QUIT:
	POP RBP
	MOV RAX, 0
	RET


; RDI 1ST 
; RSI 2ND
; RDX 3RD
; RCX 4TH
; RAX RETURN VAL
