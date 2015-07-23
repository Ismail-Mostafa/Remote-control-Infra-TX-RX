
_main:

;tx.c,2 :: 		void main() {
;tx.c,3 :: 		trisc=0;
	CLRF       TRISC+0
;tx.c,4 :: 		trisd=0;
	CLRF       TRISD+0
;tx.c,5 :: 		portd=255;
	MOVLW      255
	MOVWF      PORTD+0
;tx.c,6 :: 		UART1_Init(2400);
	MOVLW      103
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;tx.c,7 :: 		PWM1_Init(30000);
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      32
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;tx.c,8 :: 		PWM1_Set_Duty(127);
	MOVLW      127
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;tx.c,9 :: 		x=20;
	MOVLW      20
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
;tx.c,10 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;tx.c,11 :: 		for(;;)
L_main0:
;tx.c,13 :: 		UART1_Write(x);
	MOVF       _x+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;tx.c,14 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;tx.c,15 :: 		}
	GOTO       L_main0
;tx.c,16 :: 		}
	GOTO       $+0
; end of _main
