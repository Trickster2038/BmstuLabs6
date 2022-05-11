#include <avr/interrupt.h>
#include <avr/io.h>
#include <util/delay.h>

// ��������� �������� ���������� INT0
ISR(INT0_vect)
{ char timer; // ��������� ����������
 timer = TCNT0;
 if (timer != 0)
 {TCNT0 = 0; // ����� �������/��������
 PORTB |= (1<<PB6); //PORTB=0b11000001 (��������� ��������� LED6)
 do {
 PORTB &= ~(1<<PB7);//PORTB=0b01000001 (�������� ��������� LED7)
 _delay_ms(500); // �������� 500 ��
 PORTB |= (1<<PB7); //PORTB=0b11000001 (��������� ��������� LED7)
 _delay_ms(500);
 } while (--timer != 0);
 PORTB &= ~(1<<PB6); //PORTB=0b10000001 (�������� ��������� LED6)
 }
}

int main(void)
{
 // ������������� ������
DDRB=0xC0; // PB7,PB6 ��� ������ �� LED7,LED6 PB0- ��� �����
 PORTB=0b10000001; // ��������� LED7, PB0-������������� �������� ������
 DDRD=0; 
 PORTD=(1<<PD2); // PD2-������������� ��������
 // ������������� ������� 0
 TCCR0=0x06; 
 TCNT0=0x00; 
 
 GICR=(1<<INT0); // ������������� ���������� INT0 � GI�R (��� GIMSK)
 MCUCR=(1<<SE); // ���������� �������� � ����� Idle
 sei(); // ���������� ���������� ����������
 for (;;) {
 asm("sleep"); // ������� � ����� Idle
 asm("nop");
 }
}
