; Hc/NtUserSetClipboardViewer
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetClipboardViewer:DWORD

.DATA
.CODE

HcUserSetClipboardViewer PROC
	mov r10, rcx
	mov eax, sciUserSetClipboardViewer
	syscall
	ret
HcUserSetClipboardViewer ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetClipboardViewer:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetClipboardViewer PROC
	mov eax, sciUserSetClipboardViewer
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
HcUserSetClipboardViewer ENDP

ENDIF

END