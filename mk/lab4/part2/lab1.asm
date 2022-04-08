;************************************************************************
;.include "8515def.inc" ;���� ����������� AT90S8515
.include "m8515def.inc" ;���� ����������� ATmega8515
.def temp = r16 ;��������� �������
.equ SW0 = 0 ;0-�� ����� ����� PD
.equ SW1 = 1 ;1-�� ����� ����� PD
;***������� �������� ����������
.org $000

rjmp INIT ;��������� ������
.org $006
rjmp T1_OVF ;��������� ������������ ������� T0

;***������������� ��
INIT: ldi temp,low(RAMEND) ;���������
out SPL,temp ; ��������� �����
ldi temp,high(RAMEND) ; �� ���������
out SPH,temp ; ������ ���
clr temp ;������������� ������� ����� PD
out DDRD,temp ; �� ����
ldi temp,0x03 ;��������� ��������������� ����������
out PORTD,temp ; � �������� 0,1 ����� PD
ser temp ;������������� ������� ����� PB
out DDRB,temp ; �� �����
out PORTB,temp ;���������� �����������

;***��������� ������� �1 �� ����� �������
ldi temp,0x80 ;���������� ���������� ��
out TIMSK,temp ; ������������ ������� �1
clr temp ;������ �1
out TCCR1B,temp ; ����������
ldi temp,0x80 ; �������� TCNT1
out TCNT1H,temp
ldi temp,0x00
out TCNT1L,temp
sei ;���������� ���������� ����������

;***�������� ������� ������
test_sw0: sbic PIND,SW0 ;�������� �������
rjmp test_sw1 ; ������ SW0

;***��������� ������� ������ SW0
ldi temp,0x05 ;��� ��������� ������������ (�=1024)
rcall LED_ON ;��������� �����������
test_sw1: sbic PIND,SW1 ;�������� �������
rjmp test_sw0 ; ������ SW1

;***��������� ������� ������ SW1
ldi temp,0x04 ; ��� ��������� ������������ (�=256)
rcall LED_ON ;��������� �����������
rjmp test_sw0

;***��������� �����������
LED_ON: out TCCR1B,temp ;������ ������� � �������������
clr temp ;���������
out PORTB,temp ; �����������
ret

;***��������� ���������� ��� ������������ ������� T1
T1_OVF: ser temp
out PORTB,temp ;���������� �����������
clr temp ;�������
out TCCR1B,temp ; ������� �1
ldi temp,0x80; �������������� ����� - 0xC0
out TCNT1H,temp ; ������������ TCNT1
ldi temp,0x00
out TCNT1L,temp
reti



