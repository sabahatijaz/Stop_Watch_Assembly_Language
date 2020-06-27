Include Irvine32.inc
.data
.data
;______________________________________________________________________________________________

S BYTE "       	 ===== =====  ====   ====  	|      |  /  \  =====  ===== |     |",0,0dh,0ah
Tt BYTE "	|        |   |    | |    | 	|      | |    |   |   |      |     |",0,0dh,0ah
Oo BYTE "	 =====   |   |    | |----  	|  /\  | |====|   |   |      |=====|",0,0dh,0ah
P BYTE "	      |  |   |    | |      	| /  \ | |    |   |   |      |     |",0,0dh,0ah
W BYTE "	 =====   |    ====  |           |/    \| |    |   |    ===== |     |",0,0dh,0ah
;______________________________________________________________________________________________
mesg1 BYTE "Press S to start",0
mesg2 BYTE "Press P to pause",0
mesg3 BYTE "Press R to reset",0
ms word 0
se word 0
mi word 0
pose BYTE ?
start BYTE ?
reset BYTE ?
.code
main proc
xor eax,eax
xor ebx,ebx
xor ecx,ecx

call ddsplay
mov edx,OFFSET mesg1
call writeString
call crlf
mov edx,OFFSET mesg2
call writeString
call crlf
mov edx,OFFSET mesg3
call writeString
call crlf
call crlf



lap:

mov cx, -1
l:
call readchar
mov start,al
call writechar
call crlf
call crlf
movzx eax,start
.if eax=="s"
jmp asd
.else
jmp jkl
.ENDIF


asd:
;mov ax,01h
;int 33h
;cmp ax,01h
;jnz jkl

L1:
call Display
call ChangeValues
mov eax, 100
call Delay
Loop L1
loop l

jkl:
call ResetWatch
exit
main endp


;======================================================================================================================
;_____________________MAIN DISPLAY_________
ddsplay PROC


call crlf
mov edx,OFFSET S
call writestring
call crlf
mov edx,OFFSET Tt
call writestring
call crlf
mov edx,OFFSET Oo
call writestring
call crlf
mov edx,OFFSET P
call writestring
call crlf
mov edx,OFFSET W
call writestring
call crlf
call crlf
call crlf
call crlf

ret
ddsplay ENDP











EIGHT6 PROC a:byte,b:byte 
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
dec a
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar

ret
EIGHT6 ENDP

ZERO6 PROC a:byte,b:byte


mov dh,a    
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
dec b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
mov dl,b
call gotoxy
call writeChar
inc b
mov dh,a    
mov dl,b
call gotoxy
mov al,"_"
call writeChar
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
mov dl,b
call gotoxy
call writeChar

ret
ZERO6 ENDP

TWO6 PROC a:byte,b:byte
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
dec a
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar

ret 
TWO6 ENDP




THREE6 PROC a:byte,b:byte
dec a
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar

ret
THREE6 ENDP


FIVE6 PROC a:byte ,b:byte
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
inc a
mov dh,a
call gotoxy
call writechar
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
ret
FIVE6 ENDP


ONE6 PROC a:byte,b:byte

mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
mov dl,b
call gotoxy
call writeChar

ret
ONE6 ENDP



FOUR6 PROC a:byte,b:byte
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc b
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc b
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
ret
FOUR6 ENDP




SIX6 PROC a:byte,b:byte
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
dec a
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
inc a
mov dh,a
call gotoxy
call writechar
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
ret
SIX6 ENDP



SEVEN6 PROC a:byte,b:byte
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
ret
SEVEN6 ENDP




NINE6 PROC a:byte,b:byte
mov dh,a
mov dl,b
call gotoxy
mov al,"|"
call writeChar
dec a
inc b
mov dh,a
mov dl,b
call gotoxy
mov al,"_"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
inc b
mov dl,b
call gotoxy
mov al,"|"
call writeChar
inc a
mov dh,a
call gotoxy
call writeChar
ret
NINE6 ENDP








Display PROC
call clrscr
mov edx,OFFSET mesg1
call writeString
call crlf
mov edx,OFFSET mesg2
call writeString
call crlf
mov edx,OFFSET mesg3
call writeString
call crlf
call crlf



mov ax, mi
mov bl,10
div bl
cmp al, '0'
je mzer
jmp DMI
mzer:
INVOKE ZERO6,4,4
jmp mq
DMI:
cmp al,8
je e
jmp DMIu
e:
INVOKE EIGHT6,4,4
jmp mq

DMIu:
cmp al,0
je z
jmp o
z:
INVOKE ZERO6,4,4
jmp mq
o:
cmp al,1
je on
jmp t
on:
INVOKE ONE6,4,4
jmp mq
t:
cmp al,2
je tw
jmp th
tw:
INVOKE TWO6,4,4
jmp mq

th:
cmp al,3
je thr
jmp thre
thr:
INVOKE three6,4,4
jmp mq

thre:
cmp al,4
je f
jmp fo
f:
INVOKE four6,4,4
jmp mq

fo:
cmp al,5
je fi
jmp fiv
fi:
INVOKE FIVE6,4,4
jmp mq
fiv:
cmp al,6
je sinn
jmp six
sinn:
INVOKE six6,4,4
jmp mq
six:
cmp al,7
je sev
jmp seve
sev:
INVOKE seven6,4,4
jmp mq
seve:
cmp al,9
je ni
jmp nin
ni:
INVOKE nine6,4,4
jmp mq
nin:
jmp mq

;-----------------------------------------------------------

mq:
cmp ah, '0'
je hmzer
jmp hDMI
hmzer:
INVOKE ZERO6,4,8
jmp hmq
hDMI:
cmp ah,8
je he
jmp hDMIu
he:
INVOKE EIGHT6,4,8
jmp hmq

hDMIu:
cmp ah,0
je hz
jmp ho
hz:
INVOKE ZERO6,4,8
jmp hmq
ho:
cmp ah,1
je hon
jmp ht
hon:
INVOKE ONE6,4,8
jmp hmq
ht:
cmp ah,2
je htw
jmp hth
htw:
INVOKE TWO6,4,8
jmp hmq

hth:
cmp ah,3
je hthr
jmp hthre
hthr:
INVOKE three6,4,8
jmp hmq

hthre:
cmp ah,4
je hf
jmp hfo
hf:
INVOKE four6,4,8
jmp hmq

hfo:
cmp ah,5
je hfi
jmp hfiv
hfi:
INVOKE FIVE6,4,8
jmp hmq
hfiv:
cmp ah,6
je hsinn
jmp hsix
hsinn:
INVOKE six6,4,8
jmp hmq
hsix:
cmp ah,7
je hsev
jmp hseve
hsev:
INVOKE seven6,4,8
jmp hmq
hseve:
cmp ah,9
je hni
jmp hnin
hni:
INVOKE nine6,4,8
jmp hmq
hnin:
jmp hmq





hmq:
mov al, ':'
call WriteChar






;------------------------------------------------------second----------------------------------------------------------------------




sec:
mov ax, se
mov bl,10
div bl
cmp al,0
je zer
jmp DSE
zer:
INVOKE ZERO6,4,12
jmp q
DSE:
cmp al,8
je sse
jmp DSIu
sse:
INVOKE EIGHT6,5,12
jmp q

DSIu:
cmp al,0
je sz
jmp so
sz:
INVOKE ZERO6,4,12
jmp q
so:
cmp al,1
je son
jmp sst
son:
INVOKE ONE6,5,12
jmp q
sst:
cmp al,2
je stw
jmp sth
stw:
INVOKE TWO6,6,12
jmp q

sth:
cmp al,3
je sthr
jmp sthre
sthr:
INVOKE three6,5,12
jmp q

sthre:
cmp al,4
je sf
jmp sfo
sf:
INVOKE four6,5,12
jmp q

sfo:
cmp al,5
je sfi
jmp sfiv
sfi:
INVOKE FIVE6,5,12
jmp q
sfiv:
cmp al,6
je ssinn
jmp ssix
ssinn:
INVOKE six6,5,12
jmp q
ssix:
cmp al,7
je ssev
jmp sseve
ssev:
INVOKE seven6,4,12
jmp q
sseve:
cmp al,9
je sni
jmp snin
sni:
INVOKE nine6,5,12
jmp q
snin:
jmp q


;--------------------------------------------ahhhh-----------------------------------------------------------

q:
cmp ah,0
je hzer
jmp hDSE
hzer:
INVOKE ZERO6,4,16
jmp hq
hDSE:
cmp ah,8
je hsse
jmp hDSIu
hsse:
INVOKE EIGHT6,5,16
jmp hq

hDSIu:
cmp ah,0
je hsz
jmp hso
hsz:
INVOKE ZERO6,4,16
jmp hq
hso:
cmp ah,1
je hson
jmp hsst
hson:
INVOKE ONE6,5,16
jmp hq
hsst:
cmp ah,2
je hstw
jmp hsth
hstw:
INVOKE TWO6,6,16
jmp hq

hsth:
cmp ah,3
je hsthr
jmp hsthre
hsthr:
INVOKE three6,5,16
jmp hq

hsthre:
cmp ah,4
je hsf
jmp hsfo
hsf:
INVOKE four6,5,16
jmp hq

hsfo:
cmp ah,5
je hsfi
jmp hsfiv
hsfi:
INVOKE FIVE6,5,16
jmp hq
hsfiv:
cmp ah,6
je hssinn
jmp hssix
hssinn:
INVOKE six6,5,16
jmp hq
hssix:
cmp ah,7
je hssev
jmp hsseve
hssev:
INVOKE seven6,4,16
jmp hq
hsseve:
cmp al,9
je hsni
jmp hsnin
hsni:
INVOKE nine6,5,16
jmp hq
hsnin:
jmp hq
hq:
mov al, ':'
call WriteChar



;---------------------------------------------------------------------------------------------------------------------------









msec:
mov ax, ms
cmp ax, 9
ja DMS
;INVOKE ZERO6,4,20
DMS:
mov ax, ms
cmp ax,8
je mse
jmp DMSIu
mse:
INVOKE EIGHT6,5,20
jmp msee

DMSIu:
cmp ax,0
je msz
jmp mso
msz:
INVOKE ZERO6,4,20
jmp msee
mso:
cmp ax,1
je mson
jmp mst
mson:
INVOKE ONE6,5,20
jmp msee
mst:
cmp ax,2
je mstw
jmp msth
mstw:
INVOKE TWO6,6,20
jmp msee

msth:
cmp ax,3
je msthr
jmp msthre
msthr:
INVOKE three6,5,20
jmp msee

msthre:
cmp ax,4
je msf
jmp msfo
msf:
INVOKE four6,5,20
jmp msee

msfo:
cmp ax,5
je msfi
jmp msfiv
msfi:
INVOKE FIVE6,5,20
jmp msee
msfiv:
cmp ax,6
je mssinn
jmp mssix
mssinn:
INVOKE six6,4,20
jmp msee
mssix:
cmp ax,7
je mssev
jmp msseve
mssev:
INVOKE seven6,5,20
jmp msee
msseve:
cmp ax,9
je msni
jmp msnin
msni:
INVOKE nine6,5,20
jmp msee
msnin:
jmp msee
msee:
mov ax, 13
call WriteChar
ret
Display EndP






















ResetWatch PROC
mov ax, mi
cmp ax, 9
ja DMI
mov al, '0'
call WriteChar
DMI:
mov ax, mi
call WriteDec
mov al, ':'
call WriteChar
mov ax, se
cmp ax, 9
ja DSE
mov al, '0'
call WriteChar
DSE:
mov ax, se
call WriteDec
mov al, ':'
call WriteChar
mov ax, ms
cmp ax, 9
ja DMS
mov al, '0'
call WriteChar
DMS:
mov ax, ms
call WriteDec
ret
ResetWatch ENDP



ChangeValues PROC
inc ms
cmp ms, 10
jne MSN
mov ms, 0
inc se
MSN:
cmp se, 60
jne SEN
mov se, 0
inc mi
SEN:
cmp mi, 60
jne MIN
mov mi, 0
MIN:
ret
ChangeValues EndP
end main