# Count to 1,000,000 on Apple 2 in 6502 assembly

The January 1984 issue of Nibble Magazine

![Cover](pics/page_cover.png)

On page 62:

![Page 62](pics/page_62.png)

Had this article `HYPERCOUNTER` by Ron Macken and Bill Consoli

Unfortunately it is slow.

The fastest way to count from 0 to 1,000,000 is to only change
the bytes that actually change from x to x+1.

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
                ;
            else
            if( delta == 1 )
            {
                if( before[x] == '0')
                    one( x );
                else
                    inc( x );
            }
            else
            if( delta == -9 )
                zer( x );

            x--;
        }
```

| End     | Memory  | Size      |
|--------:|--------:|:----------|
|    1000 |   $1568 | `<  1 KB` |
|   10000 |   $8A98 | `~ 33 KB` |
|  100000 |  $51E75 | `>325 KB` |
| 1000000 | $32E517 | `>  3 MB` |

We'll unroll the first 10,000 numbers so it fits into the 48KB of RAM.

With a little bit of setup code ...

```asm
digit = $401           ; VTAB 1:HTAB 2

    ORG $800

    LDX #'0' + $80
    LDY #'1' + $80      ; A,BCD,EFG
    STX digit - 1       ; 0,BCD,EFG
    STX digit + 0       ; 0,0CD,EFG
    STX digit + 1       ; 0,00D,EFG
    STX digit + 2       ; 0,000,EFG
    STX digit + 3       ; 0,000,0FG
    STX digit + 4       ; 0,000,00G
    STX digit + 5       ; 0,000,000

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

