.include "m8515def.inc"
.def temp = r16 
.def reg_led = r20 
.equ START = 0 

.equ STOP = 1 
.org $000
rjmp init

INIT: ldi reg_led,0x7F 
sec 
clt
ser temp 
out DDRA,temp 
out PORTA,temp 
clr temp  
out DDRD,temp
ldi temp,0x03 
out PORTD,temp 

WAITSTART: 
sbic PIND,START 
rjmp WAITSTART 

LOOP: out PORTA,reg_led 
ldi r17, 235
	d1: ldi r18,255
		d2: ldi r19, 10
			d3: dec r19
			brne d3
		dec r18
		brne d2
	dec r17
	brne d1

sbic PIND,STOP 
rjmp MM 
rjmp WAITSTART 

MM: brts LEFT 
sbrs reg_led,1
set 
ror reg_led 
rjmp LOOP 

LEFT: sbrs reg_led,6
clt 
rol reg_led 
rjmp LOOP
