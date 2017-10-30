# Count to 1,000,000 on Apple 2 in 6502 assembly

The January 1984 issue of Nibble Magazine

![Cover](pics/page_cover.png)

Had this article `HYPERCOUNTER` by Ron Macken and Bill Consoli on page 62:

![Page 62](pics/page_62.png)

Hypercounter.s:

```
                        ORG $300
                SCRN    EQU $5B8    ;FIRST LOCATION ON THE SCREEN
                HOME    EQU $FC58
300:20 58 FC            JSR HOME    ;CLEAR SCREEN
303:A9 B0               LDA #$B0    ;ASC (IN HEX) OF THE DIGIT 0
305:A2 08               LDX #8
307:9D B8 05    NUMCL   STA SCRN,X  ;SET XTH DIGIT TO ZERO
30A:CA                  DEX
30B:D0 FA               BNE NUMCL   ;GOTO NUMCL IF ALL 8 DIGITS AREN'T 0
30D:A2 08       COUNT   LDX #8
30F:A9 B9       CHECK   LDA #$B9    ;   WILL THIS DIGIT BE GREATER
311:DD B8 05            CMP SCRN,X  ;THAN 9 IF WE INCREMENT IT?
314:F0 06               BEQ KICK    ;YES? THEN IT NEEDS TO BE KICKED OVER
316:FE B8 05            INC SCRN,X  ;ACTUAL COUNTING IS DONE HERE
319:4C 0D 03            JMP COUNT   ;START OVER
31C:A9 B0       KICK    LDA #$B0    ;KICKS DIGIT OVER FROM 9 TO 0
31E:9D B8 05            STA SCRN,X  ;PUTS THE DIGIT ON THE SCREEN
321:CA                  DEX
222:D0 EB               BNE CHECK   ;GO BACK AND DO IT AGAIN
324:60                  RTS         ;WE'VE REACHED 99,999,999 !
```

Which generates this binary:

```
300:20 58 FC A9 B0 A2 08 9D
308:B8 05 CA D0 FA A2 08 A9
310:B9 DD B8 05 F0 06 FE B8
318:05 4C 0D 03 A9 B0 9D B8
320:05 CA D0 EB 60      
```

Unfortunately it is S-L-O-W and buggy. :-/

* The Y-Reg is unused. We could cache two constants in registers:
  *  A = $B9 (`9`) and
  * `Y = $B0 (`0`) instead of constantly reloading A on $30F and $31C
* It uses the slow 7 cycle `INC $abs,X`. This is done 1,000,000 times. Faster is the 4 cycle `INC $abs`
* It has an _off-by-one_ bug -- it doesn't actually display 100,000,000. The last number two numbers output are:
  * 99,999,999
  * 00,000,000

Other problems include:

* It includes your typical _"No Shit, Sherlock!"_ crappy verbose commenting

We are going to change the range above (0 - 99,999,999) to (1 - 1,000,000) since on c.s.a2 this similar problem was asked:

```
Can anyone provide the quickest native machine language routine equivalent to 

    FOR I = 1 TO 1E6: PRINT I: NEXT 
```

Now, the fastest way to count from 1 to 1,000,000 is to _only_ change
the bytes that _actually_ change from x to x+1.

This means we can remove ALL compares and branching!

We can write a C program to spit out 6502 assembly for us:

```C++
    for( i = 0; i < end; i++ )
    {
        int x = NUM-1;

        char before[ NUM+1 ];
        char after [ NUM+1 ];

        sprintf( before, "%0*d", NUM, i+0 );
        sprintf( after , "%0*d", NUM, i+1 );

        while( x > 0 )
        {
            int delta = after[x] - before[x];
            if( delta == 0 )
                ; // skip digit
            else
            if( delta == 1 )
            {
                if( (before[x] == '0') && (x != 1) )
                    one( x );
                else
                if( (before[x] == '1') && (x != 1) )
                    two( x );
                else
                    inc( x );
            }
            else
            if( delta == -9 )
                zer( x );

            x--;
        }
```

You'll notice there are 4 variations of x++.  Why 4? Consider what happens to each digit:

* 0 -> 1
* 1 -> 2
* 9 -> 0
* remaining 2,3,4,5,6,7,8

Since the 6502 has 3 registers, A, X, and Y we have 3 specializations where we can cache the constant values in registers:

* X = 0
* Y = 1
* A = 2

To also keep things focused on a pure benchmark we also remove that clear screen.


# Memory Size

Depending on how much we want to loop-unroll we get this tradeoff:


| End     | Memory  | Size      |
|--------:|--------:|:----------|
|    1000 |   $1568 | `<  1 KB` |
|   10000 |   $8A98 | `~ 33 KB` |
|  100000 |  $51E75 | `>325 KB` |
| 1000000 | $32DCB7 | `>  3 MB` (3,333,330 bytes) |

We'll unroll the first 10,000 numbers so it fits into the 48KB of RAM.

With a little bit of setup code ...

```asm
digit = $401           ; VTAB 1:HTAB 2

    ORG $800

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
    JSR Count_100_000   ; 100000
    JSR Count_100_000   ; 200000
    JSR Count_100_000   ; 300000
    JSR Count_100_000   ; 400000
    JSR Count_100_000   ; 500000
    JSR Count_100_000   ; 600000
    JSR Count_100_000   ; 700000
    JSR Count_100_000   ; 800000
    JSR Count_100_000   ; 900000
    JSR Count_100_000   ; 000000

Epilogue                            ;==10
    STX digit + 0       ; 000000
    STY digit - 1       ;1000000
    RTS

Count_100_000
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ;  00000
    STX digit + 1       ; 000000
    INC digit + 0       ; 100000
    RTS

Count_10_000
```

... Bob's your uncle.

Is that the best we can do?

No, we can continue unrolling even more!

```asm
; 100000
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ; 0:0000
    STX digit + 1       ; 000000
    INC digit + 0       ; 100000

; 200000
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
    INC digit + 0       ; 200000

; 300000
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

; 400000
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

; 500000
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

; 600000
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

; 700000
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

; 800000
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

; 900000
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

;1000000
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
```

# Total Time

```
Prologue     = +30
Work         = +730
Count_10_000 = +6,000,600
Epilogue     = +10
==================
6,001,370 cycles
```


# Theoritical Best Case?

So what is the theoritical _fastest_ case if we display every number?

Loop unrolling all 1,000,000 we have this timing:

A) We would have 30 cycles of prologue code: 

```
digit = $401           ; VTAB 1:HTAB 2 

    ORG $0 

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
```

B) 4 cycles epilogue: 

```
    STY digit - 1       ;1000000 
```

C) And 5,999,996 of counting from 1 to 1,000,000 with these stats: 

* SIZE = $32DCB7 (3,333,330 bytes) 
* CYCLES = 5,999,996 

For a best case of:

= 30 + 4 +  5,999,996
= 6,000,030 cycles.

You can verify yourself with [unrolled.1000000.s](unrolled.1000000.s )


# Results

How well did we do?

= 6,000,030 / 6,001,370 * 100
= 99.97% of peak performance.

Not bad!

Who knew counting could be so complicatd! :-)

QED.

