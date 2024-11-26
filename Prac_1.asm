
;Nuestro primer programa 

.model small 
.code
    inicio:
     
    mov bx, 15h
    mov ax, bx
    int 21h      
    
    end inicio