data segment
num1 db ?
num2 db ?
sum db ?
msg1 db 10,13,"Enter the first number: $"
msg2 db 10,13,"Enter the second number: $"
msg3 db 10,13,"Sum is: $"
data ends
code segment
assume cs:code,ds:data
start: mov ax,data
 mov ds,ax
 lea dx,msg1
 mov ah,9h
 int 21h
 mov ah,1h
 int 21h
 sub al,30h
 mov num1,al
 lea dx,msg2
 mov ah,9h
 int 21h
 mov ah,1h
 int 21h
 sub al,30h
 mov num2,al
 add al,num1
 mov sum,al
 mov ah,0
 aaa
 add ah,30h
 add al,30h
 mov bx,ax
 lea dx,msg3
 mov ah,9h
 int 21h
 mov ah,2h
 mov dl,bh
 int 21h
 mov ah,2
 mov dl,bl
 int 21h
 mov ah,4ch
 int 21h
code ends
end start
