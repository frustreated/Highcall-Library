; Hc/NtQueryBootOptions
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryBootOptions:DWORD

.DATA
.CODE

HcQueryBootOptions PROC
	mov r10, rcx
	mov eax, sciQueryBootOptions
	syscall
	ret
HcQueryBootOptions ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryBootOptions:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryBootOptions PROC
	mov eax, sciQueryBootOptions
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
HcQueryBootOptions ENDP

ENDIF

END