; Hc/NtGdiDdDDIMarkDeviceAsError
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIMarkDeviceAsError:DWORD

.DATA
.CODE

HcGdiDdDDIMarkDeviceAsError PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIMarkDeviceAsError
	syscall
	ret
HcGdiDdDDIMarkDeviceAsError ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIMarkDeviceAsError:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIMarkDeviceAsError PROC
	mov eax, sciGdiDdDDIMarkDeviceAsError
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
HcGdiDdDDIMarkDeviceAsError ENDP

ENDIF

END