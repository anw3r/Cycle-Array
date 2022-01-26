.586
.model flat
.code

extrn _RestoDivisione:near
_RuotaElementiVettore proc

;1.0
push ebp 
mov ebp,esp

;2.0 Var Locali
sub esp,4

;3.0 Salvataggio registri
push ebx
push esi


;4.0 Core
mov ebx,dword ptr[ebp+8]
mov esi,0
mov dword ptr[ebp-4],0

ciclo:
cmp esi,dword ptr[ebp+12]
jae Fine
mov ecx,dword ptr[ebx+esi*4]

test ecx,1
jnz salta

ruota:
mov ecx,dword ptr[ebx+esi*4]
ror ecx,3

mov dword ptr[ebx+esi*4],ecx
inc dword ptr[ebp-4]

salta:
inc esi
jmp ciclo

Fine:

;5.0 Set EAX
sub esi,dword ptr[ebp-4]
mov eax,esi

;6.0 Ripristino Registri
pop esi
pop ebx

;7.0 Canc Var
add esp,4

;8.0 
pop ebp

;9,0
ret

_RuotaElementiVettore endp
end