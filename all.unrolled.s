digit = $401           ; VTAB 1:HTAB 2

    ORG $800

; Prologue     = +30
; Work         = +730 = 594 + 136 = 70*8 + 68*2
; Count_10_000 = +6,000,600 = 100*60006
; Epilogue     = +10
; ==================
; 6,001,370 cycles


Prologue
    LDA #'2' + $80                  ; +2 = 2
    LDX #'0' + $80                  ; +2 = 4
    LDY #'1' + $80      ; A,BCD,EFG ; +2 = 6
    STX digit - 1       ; 0,BCD,EFG ; +4 = 10
    STX digit + 0       ; 0,0CD,EFG ; +4 = 14
    STX digit + 1       ; 0,00D,EFG ; +4 = 18
    STX digit + 2       ; 0,000,EFG ; +4 = 22
    STX digit + 3       ; 0,000,0FG ; +4 = 26
    STX digit + 4       ; 0,000,00G ; +4 = 30
;   STX digit + 5       ; 0,000,000 ; +4 = 34 ; <-- not needed since Count_10_000 sets to '1'

Work
; 100000                            ;===== +70
    JSR Count_10_000    ; 010000    ;  6 = 6
    JSR Count_10_000    ; 020000    ; +6 = 12
    JSR Count_10_000    ; 030000    ; +6 = 18
    JSR Count_10_000    ; 040000    ; +6 = 24
    JSR Count_10_000    ; 050000    ; +6 = 30
    JSR Count_10_000    ; 060000    ; +6 = 36
    JSR Count_10_000    ; 070000    ; +6 = 42
    JSR Count_10_000    ; 080000    ; +6 = 48
    JSR Count_10_000    ; 090000    ; +6 = 54
    JSR Count_10_000    ; 0:0000    ; +6 = 60
    STX digit + 1       ; 000000    ; +4 = 64
    INC digit + 0       ; 100000    ; +6 = 70

; 200000                            ;===== +68 ***
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 1:0000
    STX digit + 1       ; 100000
    STA digit + 0       ; 200000

; 300000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 2:0000
    STX digit + 1       ; 200000
    INC digit + 0       ; 300000

; 400000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 3:0000
    STX digit + 1       ; 400000
    INC digit + 0       ; 400000

; 500000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 4:0000
    STX digit + 1       ; 400000
    INC digit + 0       ; 500000

; 600000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 5:0000
    STX digit + 1       ; 500000
    INC digit + 0       ; 600000

; 700000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 6:0000
    STX digit + 1       ; 600000
    INC digit + 0       ; 700000

; 800000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 7:0000
    STX digit + 1       ; 700000
    INC digit + 0       ; 800000

; 900000                            ;===== +70
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 8:0000
    STX digit + 1       ; 800000
    INC digit + 0       ; 900000

;1000000                            ;===== +68 ***
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 9:0000
    STX digit + 1       ; 900000    ; +4 = 64
    STX digit + 0       ; 000000    ; +4 = 68

Epilogue                            ;==10
    STY digit - 1       ;1000000    ; +4
    RTS                             ; +6

Count_10_000
    USE count.10000.s

