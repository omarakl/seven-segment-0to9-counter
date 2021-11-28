.include "m328pdef.inc"
.org 0x00

ldi R16, 0xFF
out DDRD, R16			; Setting PORTD as OUTPUT

loop:

ldi R17, 0x3F		; zero
out PORTD, R17			; displaying the value in R17 on PORTD
call delay				; call the delay

ldi R17, 0x06		; one
out PORTD, R17
call delay

ldi R17, 0x5B		; two
out PORTD, R17
call delay

ldi R17, 0x4F		; three
out PORTD, R17
call delay

ldi R17, 0x66		; four
out PORTD, R17
call delay

ldi R17, 0x6D		; five
out PORTD, R17
call delay

ldi R17, 0x7D		; six
out PORTD, R17
call delay

ldi R17, 0x27		; seven
out PORTD, R17
call delay

ldi R17, 0x7F		; eight
out PORTD, R17
call delay

ldi R17, 0x6F		; nine
out PORTD, R17
call delay

jmp loop				; repeating the process

delay:
	ldi R30, 150
	
delay1:
	ldi R24, 150
delay2:
	ldi R25, 100
delay3:
	dec R25
	nop
	brne delay3
	dec R24
	brne delay2
	dec R30
	brne delay1
	ret