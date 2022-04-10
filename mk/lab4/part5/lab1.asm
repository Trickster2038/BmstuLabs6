;��� ������� SW0 (START) �� ���� �������� ��������� ������ � �������� 
; 3,69 ���/1024, ��� ������� SW3 (CAPT) ���������� ������ ��������� �������.
;��� ���������� ����������� �������� � �������� ��������� OCR1A
;���������� ����� �������.
;��� ������� SW1 (SHOW_L) �� ���������� ��������� �������� �������� 
;����� �������� �������, SW2 (SHOW_H) - �������� ����� �������� �������.
;����������: SW0�PD0,SW1�PD1,SW2-PD2,SW3�PE0,10-��������� ������� PB-LED
;************************************************************************
;.include "8515def.inc" ;���� ����������� AT90S8515
.include "m8515def.inc" ;���� ����������� ATmega8515
.def temp = r16 ;��������� �������
.def H_byte = r17 ;��� �������� �������� �����
.def L_byte = r18 ;��� �������� �������� �����
.equ START = 0 ;0-�� ����� ����� PD
.equ SHOW_L = 1 ;1-�� ����� ����� PD
.equ SHOW_H = 2 ;2-�� ����� ����� PD

;***������� ����������
.org $000
rjmp INIT ;��������� ������
.org $003
rjmp CAPT_PRESSED ;��������� ����������
; ��� ������� CAPT

;***������������� ��
INIT: ldi temp,low(RAMEND) ;���������
out SPL,temp ; ��������� �����
ldi temp,high(RAMEND) ; �� ���������
out SPH,temp ; ������ ���
clr temp ;������������� �������
out DDRD,temp ; ����� PD �� ����
ldi temp,0x07 ;��������� ��������������� 
out PORTD,temp ; ���������� ����� PD
clr temp ;/// ��� ATmega8515 ������������� 
out DDRE,temp ;/// PE0 (ICP) �� ����
ldi temp,0x01 ;/// ��������� ��������������� 
out PORTE,temp ;/// ��������� ����� P�0
ser temp ;������������� �������
out DDRB,temp ; ����� PB �� �����

out PORTB,temp ;���������� �����������
cli ;���������� ����������
clr temp ;���������� �� ������� 
out TCCR1A,temp ; ������� ������
clr temp ;������
out TCCR1B,temp ; ����������
ldi temp,0xFF ;������ ����� �
out OCR1AH,temp ; ������� ���������,
ldi temp,0xFF ; ������ ������������
out OCR1AL,temp ; ������� ����
clr temp ;���������
out TCNT1H,temp ; �����������
out TCNT1L,temp ; �������� ��������
ldi L_byte,0x00 ; ���������
ldi H_byte,0x00 ; ��������� ������
sei ;���������� ���������� ����������

WAITSTART: sbic PIND,START ;�������� �������
rjmp WAITSTART ; ������ START
ldi temp,0x08 ;���������� ����������
out TIMSK,temp ; �� ������� "������" �������
ldi temp,0xCD ;������ ������� � ������������� 1024, 
out TCCR1B,temp 
; ��� ���������� � OCR1A - �����

WAIT_L: sbic PIND,SHOW_L ;�������� �������
rjmp WAIT_H ; ������ SHOW_L - �������� ������� ����
out PORTB,L_byte ;����� �� ��

WAIT_H: sbic PIND,SHOW_H ;�������� �������
rjmp WAIT_L ; ������ SHOW_H - �������� ������� ����
out PORTB,H_byte ;����� �� ��
rjmp WAIT_L

;***��������� ���������� �� ������ CAPT
CAPT_PRESSED:
in L_byte,ICR1L ;���������� �������� �����
in H_byte,ICR1H ;���������� �������� �����
com L_byte ;�������������� ��� ������
com H_byte ;�������������� ��� ������ 
reti
