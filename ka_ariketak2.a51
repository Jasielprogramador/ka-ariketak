org 00h
jmp hasiera

org 20h
hasiera:
;@->Saltar al valor que tenga guardado r0
mov r0,#80h
mov @r0,#0Fh
mov r1,#81h
mov @r1,#11h

;Ram baxuak->Es accecible

mov A,@ro
add A,@r1
mov 7Fh,A

mov r0,#0FFh
mov @r0,7Fh

end
