org 00h
jmp hasiera

org 20h
hasiera:

;0. eta 7. bitak 
setb 20h0
setb 20h7

clr 20h0
clr 20h7

mov p1,#00h
;nose que es eso de "posible dugu"

mov A,p1
mov p1,#0FFh
clr p1
setb p1.7

;erregistro banku
setb psw.3
clr psw.4
mov r0,#OBh

setb psw.4
clr psw.3
mov r0,#04h

setb psw.3
clr psw.4
mov A,r0

setb psw.4
clr psw.3
add A,r1


end
