; Hc/NtUserShowCursor
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserShowCursor:DWORD

.DATA
.CODE

HcUserShowCursor PROC
	mov r10, rcx
	mov eax, sciUserShowCursor
	syscall
	ret
HcUserShowCursor ENDP

ELSE
; 32bit

EXTERNDEF C sciUserShowCursor:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserShowCursor PROC
	mov eax, sciUserShowCursor
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserShowCursor ENDP

ENDIF

END