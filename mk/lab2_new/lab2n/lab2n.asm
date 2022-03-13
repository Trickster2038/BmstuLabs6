.include "m8515def.inc"		;���� ����������� ��� ATmega8515
.def temp = r16				;��������� �������
.equ led = 0				;0-� ��� ����� PB
.equ sw0 = 0				;0-� ��� ����� PA
.equ sw1 = 1				;1-� ��� ����� PA

.org $000
		rjmp INIT			;��������� ������
	;***������������� ��***
INIT:		ldi temp,$5F		;���������
		out SPL,temp		; ��������� �����
		ldi temp,$02		; �� ���������
		out SPH,temp		; ������ ���
		ser temp			;������������� ������� 
		out DDRB,temp		; ����� PB �� �����
		out PORTB,temp		;�������� LED
		clr temp			;������������� 
		out DDRA,temp		; ����� PA �� ����	
		ldi temp,0b00000011	;��������� ��������������� 
		out PORTA,temp		; ���������� ����� PA

test_sw0:	sbic PINA,sw0 ;�������� ���������
rjmp test_sw1		; ������ sw0
cbi PORTB, led
rcall delay1
sbi PORTB,led

wait_0: 	sbis PINA,sw0
rjmp wait_0

test_sw1: sbic PINA, sw1 ;�������� ���������
		rjmp test_sw0		; ������ sw1		
cbi PORTB,led
rcall delay2
sbi PORTB,led

wait_1: 	sbis PINA,sw1
rjmp wait_1
		rjmp test_sw0

delay1:        			 	; ������������ 1 �
	ldi r17, 55
	d1: ldi r18,95
	d2: ldi r19, 255
	d3: dec r19
	brne d3
	dec r18
	brne d2
	dec r17
	brne d1 ; ������������ 1 �
	ret

delay2:         				; ������������ 2 �
           rcall delay1
           rcall delay1
		ret
