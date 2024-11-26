PILA SEGMENT STACK 'STACK'
     DB 100H DUP (?)
PILA ENDS

DATOS SEGMENT
              MENSAJE1 DB 'NOMBRE $' 
              MENSAJE2 DB 'APELLIDO $'
              MENSAJE3 DB 'APELLIDO2 $'
         
           
           
DATOS ENDS
          
CODIGO SEGMENT
              
              ASSUME CS:CODIGO, SS:PILA, DS:DATOS

INICIO:   

    
           mov ah,06h
           mov bH,11110011B
           mov cx,0000h
           mov dx,184fh
           int 10h
           
           MOV AH,02H   ;Para posicionar el cursor
           MOV BH,00H   ;Coloco en la pagina 0
           MOV DX,0000H ;Establesco las coordenadas, x=dh=renglon y=dl=columna
           INT 10H      ;ejecuto la interrupción
       
           MOV AX,DATOS ;Coloco la pila de datos en ax
           MOV DS,AX    ;paso ax a ds
           
          
           
           
          ; LEA DX,MENSAJE   ;imprimmo el mensaje 
            mov ah, 0ah
           LEA DX, MENSAJE1
           int 21h  
           
            mov ah,06h
           mov bH,11110011B
           mov cx,0000h
           mov dx,184fh
           int 10h
           
           MOV AH,02H   ;Para posicionar el cursor
           MOV BH,00H   ;Coloco en la pagina 0
           MOV DX,0000H ;Establesco las coordenadas, x=dh=renglon y=dl=columna
           INT 10H      ;ejecuto la interrupción
       
           MOV AX,DATOS ;Coloco la pila de datos en ax
           MOV DS,AX    ;paso ax a ds
           
           
           ;MENSAJE 2
           
           mov ah, 0ah
           LEA DX, MENSAJE2
           int 21h   
           
            mov ah,06h
           mov bH,0010B
           mov cx,0000h
           mov dx,184fh
           int 10h
           
           MOV AH,02H   ;Para posicionar el cursor
           MOV BH,00H   ;Coloco en la pagina 0
           MOV DX,0000H ;Establesco las coordenadas, x=dh=renglon y=dl=columna
           INT 10H      ;ejecuto la interrupción
       
           MOV AX,DATOS ;Coloco la pila de datos en ax
           MOV DS,AX    ;paso ax a ds
           
           
           ;MENSAJE 3
           
           mov ah, 0ah
           LEA DX, MENSAJE3
           int 21h  
           
            mov ah,06h
           mov bH,11111101B
           mov cx,0000h
           mov dx,184fh
           int 10h
           
           MOV AH,02H   ;Para posicionar el cursor
           MOV BH,00H   ;Coloco en la pagina 0
           MOV DX,0000H ;Establesco las coordenadas, x=dh=renglon y=dl=columna
           INT 10H      ;ejecuto la interrupción
       
           MOV AX,DATOS ;Coloco la pila de datos en ax
           MOV DS,AX    ;paso ax a ds
           
           
           ;OOOOOOOOOOOOOOOOOOOOOO                 
           
           
           
           
           
           
           
           MOV AH,9H        ;utilizo el servicio 9h para visulizarla en pantalla
           INT 21H          ;ejecuto llamo a la interrupcion 21h
           
         
           
           
           mov ax,4c00h
           int 21h

       MOV AX,4C00H
       INT 21H

CODIGO ENDS
END INICIO