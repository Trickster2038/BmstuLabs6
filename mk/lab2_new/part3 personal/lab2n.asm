;���������� �� ����� STK500: SW0-PD2, SW1-PD3, LED0-PA0
;*********************************************************************
.include "m8515def.inc" ;���� ����������� ��� ATmega8515
.def job = r21 ;���� ����������
.def temp = r16 ;��������� �������
.def reg_led = r20 ;����������
.equ sw0 = 2 ;2-� ��� ����� PD
.equ sw2 = 3 ;3-� ��� ����� PD
.org $000
;***������� �������� ����������, ������� � ������ $000***
rjmp INIT ;��������� ������
rjmp job_set ;�� ��������� ������� INT0
rjmp job_clr ;�� ��������� ������� INT1
;***������������� SP, ������, �������� �����***
INIT: ldi temp,$5F ; ���������
out SPL,temp ; ��������� �����
ldi temp,$02 ; �� ���������
out SPH,temp ; ������ ���
ser temp ; ������������� �������
out DDRA,temp ; ����� PB �� �����
out PORTA,temp ; �������� ��
clr temp ; �������������
out DDRD,temp ; ����� PD �� ����
ldi temp,0b00001100 ; ��������� '�������������'
out PORTD,temp ; ���������� ����� PD
ldi temp,((1<<INT0)|(1<<INT1)) ;���������� ����������
out GICR,temp ; � 6,7 ����� �������� ����� GICR
ldi temp,0 ;��������� ����������
out MCUCR,temp ; �� ������� ������
ldi reg_led, 0x7F
ldi temp, 0xFF
ldi job, 0x00
sec
sei

loop: sbrs job,0
rjmp loop

out PORTA,reg_led ;����� �� ����������
rcall delay

MM: brts LEFT 
sbrs reg_led,1
set 
ror reg_led 
rjmp LOOP 

LEFT: sbrs reg_led,6
clt 
rol reg_led 
rjmp LOOP

end: rjmp loop

job_set: ldi job,1
wait_0: sbis pind,sw0
rjmp wait_0
reti

job_clr: clr job
wait_1: sbis pind,sw2
rjmp wait_1
reti

delay: ldi r17,11
d1: ldi r18,95
d2: ldi r19,255
d3: dec r19
brne d3
dec r18
brne d2
dec r17
brne d1
ret
