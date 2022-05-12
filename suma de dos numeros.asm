; equ valor
; mov eax,1
;mov ebx 4


salir equ 1
leer equ 3
escribir equ 4
captura equ 0
imprimir equ 1

;segmento de dato
sement .data

;printf("ingrese un digito")
;"ingrese un valor"
  msgl db "ingrese el primer digito"
  tamMl equ $- msg1
  msg2 db "ingrese el segundo digito"
  tmM2 equ $- msg2
  msg3 db "el resultado es"
  tamM3 equ $- msg3
segment .bss

;declarar variable
n1 resb 2
n2 resb 2

resultado resb 1

segment .text
  global_start
  _start

;printf(ingrese el primer digito)
    mov eax, escribir
    mov ebx, imprimir
    mov ecx, msgl
    mov edx, tamMl
    int 80h
    ;scanf("")
    mov eax, leer
    mov ebx, captura
    mov ecx, nl
    int 80h

    ;printf("ingrese el segundo valor")
    mov eax, escribir
    mov ebx, imprimir
    mov ecx, msg2
    mov edx,tamM2
    int 80h

;scanf("&n2")
  mov eax,leer
  mov ebx,captura
  mov edx, n2
  int 80h

    mov eax, escribir
    mov ebx, imprimir
    mov ecx, msg3
    mov edx, tamM3
    int 80h



    mov eax,[n1] ;4 se guarda en una direccion de memoria
    sub eax, '0' ;codigo assci

    mov eax,[n2] ;5 se guarda en la direccion de memoria
    sub ebx,'0'


    add eax,ebx ;4+5


    add eax, '0'
    mov [resultado],eax ; resultado = 9 almacenada en memoria

    mov eax, escribir
    mov ebx, imprimir
    mov ecx, resultado
    mov edx, 1
    int 80h

   exit:
    mov eax, salir
    xor ebx,ebx
    int 80h 









