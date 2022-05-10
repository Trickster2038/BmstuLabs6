/*Программа 7.1 управляет переключением светодиодов, подключенных к выходам 
порта PC.*/
#include <avr/interrupt.h>
#include <avr/io.h>
#define xtal 3686400
#define fled 2 
unsigned char led_status=0xfe;
 
ISR(TIMER1_OVF_vect)
{ 
TCNT1=0x10000-(xtal/1024/fled); 
led_status<<=1; 
led_status|=0x1; 
if (led_status==0xff) led_status=0xfe; 
PORTC=led_status; 
} 

int main(void)
{ 
DDRC=0xff; 
PORTC=led_status; 
TCCR1A=0; 
TCCR1B=5; 
TCNT1=0x10000-(xtal/1024/fled); 
TIFR=0; 
TIMSK=0x80; 
GICR=0; 
sei(); 
while (1); 
}
