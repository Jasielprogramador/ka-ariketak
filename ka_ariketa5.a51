org 00h
jmp hasiera

org 20h
hasiera:
egoera equ 0x00
nb equ p1.0
na equ p1.1
ev1 equ p1.4
ev2 equ p1.5

hasieraketak:
mov egoera,#0h
setb ev1
clr ev2

;ajmp absolute jump, si estas muy lejos ljump
;jb binary jump

egoera_zehaztu:
jb nb eg1
jb na eg2
mov egoera,#0h
ajmp egoera_makina

eg1:
jb na eg3
mov egoera ,#1h
ajmp egoera_makina

eg3:
mov egoera ,#3h
ajmp egoera_makina

eg2:
mov egoera,#2h
ajmp egoera_makina

egoera_makina:
mov A,egoera
;rl es rotate left es como hacer x2
rl A
mov dptr,#egoera_taula
jmp @A+dptr

egoera_taula:
ajmp egoera0
ajmp egoera1
ajmp egoera2
ajmp egoera3

egera0:
setb ev1
clr ev2
ajmp egoera_zehaztu

egoera1:
clr ev1
clr ev2
ajmp egoera_zehaztu

egoera2:
clr ev1
setb ev2
ajmp egoera_zehaztu

egoera3:
clr ev1
setb ev2
ajmp egoera_zehaztu

end