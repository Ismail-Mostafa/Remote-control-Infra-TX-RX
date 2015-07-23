
_main:
;Rx.c,17 :: 		void main() {
;Rx.c,18 :: 		trisc=255;
	MOVLW      255
	MOVWF      TRISC+0
;Rx.c,19 :: 		trisb=0;
	CLRF       TRISB+0
;Rx.c,20 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Rx.c,21 :: 		Lcd_Out(1, 3, "Hello!");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Rx+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Rx.c,22 :: 		}
	GOTO       $+0
; end of _main
