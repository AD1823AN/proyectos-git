stack segment STACK para 'stack'
    db 64h dup (00h)
stack ends

data segment
    mensaje db "Ejemplo de PILA",0dh,0ah,"$"
data ends

code segment 
    assume cs:code,ds:data,ss:stack
    
 main proc far
    prologo:
    push ds
    xor ax,ax
    mov ax,data
    mov ds,ax
    
    
   imprimirMensaje:
   mov ah,09h
   lea dx,mensaje 
   int 21h
   
   empilarCaracteres:
   mov ax,0e59h
   mov bx,0e41h
   mov cx,0e4bh
   mov dx,0e4fh
   push ax
   push bx
   push cx
   push dx
   desempilarCaracteres:
   mov bx,0071h
   pop ax
   int 10h
   pop ax
   int 10h
   pop ax
   int 10h
   pop ax
   int 10h
   
   finalizar:
   mov ah,4ch