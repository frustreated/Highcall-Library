; Hc/NtGdiEngStrokePath
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngStrokePath:DWORD

.DATA
.CODE

HcGdiEngStrokePath PROC
	mov r10, rcx
	mov eax, sciGdiEngStrokePath
	syscall
	ret
HcGdiEngStrokePath ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngStrokePath:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngStrokePath PROC
	mov eax, sciGdiEngStrokePath
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
HcGdiEngStrokePath ENDP

ENDIF

END