;Соединения на плате STK500: SW0-PD2, SW1-PD3, LED0-PA0
;*********************************************************************
.include "m8515def.inc" ;файл определений для ATmega8515
.def job = r21 ;флаг выполнения
.def temp = r16 ;временный регистр
.def reg_led = r20 ;светодиоды
.equ sw0 = 2 ;2-й бит порта PD
.equ sw2 = 3 ;3-й бит порта PD
.org $000
;***Таблица векторов прерываний, начиная с адреса $000***
rjmp INIT ;обработка сброса
rjmp job_set ;на обработку запроса INT0
rjmp job_clr ;на обработку запроса INT1
;***Инициализация SP, портов, регистра маски***
INIT: ldi temp,$5F ; установка
out SPL,temp ; указателя стека
ldi temp,$02 ; на последнюю
out SPH,temp ; ячейку ОЗУ
ser temp ; инициализация выводов
out DDRA,temp ; порта PB на вывод
out PORTA,temp ; погасить СД
clr temp ; инициализация
out DDRD,temp ; порта PD на ввод
ldi temp,0b00001100 ; включение 'подтягивающих'
out PORTD,temp ; резисторов порта PD
ldi temp,((1<<INT0)|(1<<INT1)) ;разрешение прерываний
out GICR,temp ; в 6,7 битах регистра маски GICR
ldi temp,0 ;обработка прерываний
out MCUCR,temp ; по низкому уровню
ldi reg_led, 0x7F
ldi temp, 0xFF
ldi job, 0x00
sec
sei

loop: sbrs job,0
rjmp loop

out PORTA,reg_led ;вывод на индикаторы
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
