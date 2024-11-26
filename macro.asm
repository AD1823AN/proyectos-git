mLimpia MACRO
    mov ah, 0FH
    int 10h
    mov ah, 0
    int 10h
ENDM 

mPausa MACRO
    mov ah, 7 
    int 21h
ENDM 

mImprimC MACRO t
    lea dx, t
    mov ah, 9
    int 21h
ENDM         

mPosrc MACRO r,c 
    mov bh,0 ; indico la pantalla 
    mov dh,r ; indico el renglon 
    mov dl,c ; indico la columna 
    mov ah,2 ; indico el servicio de la interrupcion 
    int 10h
ENDM    

.MODEL small, c 
.STACK
.DATA 
  t1 db 'Soy una MACRO.$'
  t2 db 'otro texto $'
.CODE
    .STARTUP
         
         mLimpia 
         mPosrc 5,6
         mImprimC t1 
         
         mPosrc 7,6
         mImprimC t2 
         mPausa
    
    .EXIT 
END