;*****************************************************************

;��������� 4.1 ��� �� ATx8515:
;������������ ������ ������� �0 � ������ �������� �������; ;������� - ������� ������ SW0.
;����������: ���� PB0�SW0, ������� ���� PD-LED 
;���������� ���������� ����� ���������� ������� ������ SW0 

;*************************

.include "m8515def.inc" 
.def temp = r16 ;��������� �������
;***������� �������� ����������
.org $000
rjmp INIT ;��������� ������
.org $007 ;��������� ������������ ������� T0
rjmp T0_OVF

;***������������� ��
INIT:
ldi temp,low(RAMEND) ;���������
out SPL,temp ; ��������� �����
ldi temp,high(RAMEND) ; �� ���������
out SPH,temp ;������ ���
ldi temp,0x01 ;������������� ������ ����� PB0
out DDRB,temp ; �� �����, � ��7 �� ����
ldi temp,0x80 ;��������� ��������������� ���������
out PORTB,temp ; ����� PB7
ser temp ;������������� ������� ����� PD
out DDRD,temp ; �� �����
out PORTD,temp ;���������� �����������
ldi temp,(1<<SE) ;���������� ��������
out MCUCR,temp ; � ����� Idle

;***��������� ������� �0 �� ����� �������� �������
ldi temp,0x02 ;���������� ���������� ��
out TIMSK,temp ; ������������ ������� �0
ldi temp,0x07 ;������������ �������
out TCCR0,temp ; �� �������������� �������� ����������
sei ;���������� ���������� ���������� 
ldi temp,0xFC ;$FC=-4 ���
out TCNT0,temp ; ������� 4-� �������

LOOP:
sbic PINB, 7
rjmp CHK_DOWN
cbi PORTB, 0
sbi PORTB, 0
cbi PORTB, 0
WAIT_BTN_UP:
sbis PINB, 7
rjmp WAIT_BTN_UP
rcall DELAY_HALF_SECOND
CHK_DOWN:
rjmp LOOP

;***��������� ���������� ��� ������������ ������� T0
T0_OVF:
clr temp
out PORTD,temp ;��������� �����������
rcall DELAY ;��������
ser temp
out PORTD,temp ;���������� ����������� 
ldi temp,0xFC ;������������ 
out TCNT0,temp ; TCNT0
reti

;*** �������� ***
DELAY:
ldi r19,6
ldi r20,255
ldi r21,255
dd:
dec r21
brne dd
dec r20
brne dd
dec r19
brne dd
ret

DELAY_HALF_SECOND:
ldi r19, 3
ldi r20, 255
ldi r21, 255
dd2:
dec r21
brne dd2
dec r20
brne dd2
dec r19
brne dd2
ret
