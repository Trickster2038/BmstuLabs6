;************************************************************
;Программа 5.1 для демонстрации работы канала SPI
;для передающего микроконтроллера ATx8515 в режиме MASTER.
;После сброса МК1 происходит передача трёх байтов, 
;считываемых из ячеек SRAM по адресам из регистра Z
;Соединения: PB5мк1-PB5мк2, PB7мк1-PB7мк2, PB0мк1-PB4мк2
;************************************************************
;.include "8515def.inc" ;файл определений AT90S8515
.include "m8515def.inc" ;файл определений ATMEGA8515
.equ DD_MOSI = 5

.equ DD_SCK = 7
.def temp = r16 ;временный буфер
.def count = r17 ;счётчик
.org $000
rjmp init

;***Инициализация МК
INIT: ldi temp,0xB1 ;DD_MOSI, DD_SCK, SS, PB0 для вывода
out DDRB,temp
ldi ZL,0x70 ;загрузка
ldi ZH,0x01 ; данных в
ldi temp,0x41 ; память
st Z+,temp ; данных
ldi temp,0x56 ; с использованием
st Z+,temp ; косвенной
ldi temp,0x52 ; адресации с
st Z+,temp ; постинкрементом
ldi ZL,0x70
ldi count,0x03 ;установка счётчика передач

;***Настройка SPI в режиме MASTER на передачу данных
ldi temp,(1<<SPE)|(1<<MSTR)
out SPCR,temp
OUTPUT: sbi PORTB,0 ;переключение
nop ;PB0 из 1 в 0
cbi PORTB,0
ld temp,Z+ ;считывание байта из памяти
out SPDR,temp ;вывод байта в передатчик

Wait_Transmit:
sbis SPSR,SPIF ; проверка флага передачи
rjmp Wait_Transmit
dec count ;уменьшение счётчика на 1
brne OUTPUT

loop: rjmp loop
