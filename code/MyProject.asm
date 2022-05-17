
_get_password:

___get_password_Loop:
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	CLRF       _i+0
	CLRF       _i+1
L_get_password0:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password27
	MOVLW      3
	SUBWF      _i+0, 0
L__get_password27:
	BTFSC      STATUS+0, 0
	GOTO       L_get_password1
L_get_password3:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password28
	MOVLW      0
	XORWF      R1+0, 0
L__get_password28:
	BTFSS      STATUS+0, 2
	GOTO       L_get_password4
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FLOC__get_password+0
	CALL       _Keypad_Key_Click+0
	MOVF       FLOC__get_password+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	GOTO       L_get_password3
L_get_password4:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      R3+0
	GOTO       L_get_password5
L_get_password7:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      7
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password8:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      8
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password9:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      9
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password10:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      4
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password11:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      5
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password12:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      6
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password13:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      1
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password14:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      2
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password15:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      3
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_get_password6
L_get_password16:
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	GOTO       L_get_password6
L_get_password5:
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password29
	MOVLW      1
	XORWF      R1+0, 0
L__get_password29:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password7
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password30
	MOVLW      2
	XORWF      R1+0, 0
L__get_password30:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password8
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password31
	MOVLW      3
	XORWF      R1+0, 0
L__get_password31:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password9
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password32
	MOVLW      5
	XORWF      R1+0, 0
L__get_password32:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password10
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password33
	MOVLW      6
	XORWF      R1+0, 0
L__get_password33:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password11
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password34
	MOVLW      7
	XORWF      R1+0, 0
L__get_password34:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password12
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password35
	MOVLW      9
	XORWF      R1+0, 0
L__get_password35:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password13
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password36
	MOVLW      10
	XORWF      R1+0, 0
L__get_password36:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password14
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password37
	MOVLW      11
	XORWF      R1+0, 0
L__get_password37:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password15
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R1+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R1+1
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password38
	MOVLW      14
	XORWF      R1+0, 0
L__get_password38:
	BTFSC      STATUS+0, 2
	GOTO       L_get_password16
L_get_password6:
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
	GOTO       L_get_password0
L_get_password1:
	CLRF       _j+0
	CLRF       _j+1
L_get_password17:
	MOVLW      128
	XORWF      _j+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password39
	MOVLW      3
	SUBWF      _j+0, 0
L__get_password39:
	BTFSC      STATUS+0, 0
	GOTO       L_get_password18
	MOVLW      10
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       _k+0, 0
	MOVWF      R4+0
	MOVF       _k+1, 0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       _j+0, 0
	MOVWF      R2+0
	MOVF       _j+1, 0
	MOVWF      R2+1
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	MOVF       R2+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	ADDWF      R0+0, 0
	MOVWF      _k+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	INCF       FSR, 1
	ADDWF      INDF+0, 0
	MOVWF      _k+1
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
	GOTO       L_get_password17
L_get_password18:
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password40
	MOVLW      123
	XORWF      _k+0, 0
L__get_password40:
	BTFSS      STATUS+0, 2
	GOTO       L_get_password20
	MOVLW      1
	MOVWF      R0+0
	GOTO       L_end_get_password
L_get_password20:
	CLRF       _password+0
	CLRF       _password+1
	CLRF       _password+2
	CLRF       _password+3
	CLRF       _password+4
	CLRF       _password+5
	CLRF       _k+0
	CLRF       _k+1
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_get_password22:
	DECFSZ     R13+0, 1
	GOTO       L_get_password22
	DECFSZ     R12+0, 1
	GOTO       L_get_password22
	DECFSZ     R11+0, 1
	GOTO       L_get_password22
	NOP
	GOTO       ___get_password_Loop
L_end_get_password:
	RETURN
; end of _get_password

_main:

	BCF        TRISC+0, 0
	BCF        PORTC+0, 0
	CALL       _Lcd_Init+0
	CALL       _Keypad_Init+0
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	CALL       _get_password+0
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main23:
	MOVLW      1
	XORWF      PORTC+0, 1
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
	NOP
	GOTO       L_main23
L_end_main:
	GOTO       $+0
; end of _main
