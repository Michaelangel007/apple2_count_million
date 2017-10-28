/*
One of the fastest ways to count to 1,000,000
https://github.com/Michaelangel007/apple2_count_million
Michaelangel007

    g++ mem.access.cpp -o mem.access

    make mem_access
         mem_access > mem_access.s
*/

// Includes _______________________________________________________________

    #include <stdio.h>  // sprintf()
    #include <stdlib.h> // atoi()

// Globals ________________________________________________________________

    const int NUM = 6;
    char digits[ NUM+1 ] =
    {
        'B', // [0]
        'C', // [1]
        'D', // [2]
        'E', // [3]
        'F', // [4]
        'G', // [5]
         0
    };

    int i;
    int org = 0x863; // skip prologue -- see comment below


// Utility ________________________________________________________________

    // X = '0'
    void zer( int i )
    {
        digits[ i ] = '0';
        printf( "    STX digit + %d       ; %s  @ %04X\n", i, digits, org );
        org += 3;
    }

    // Y = '1'
    void one( int i )
    {
        digits[ i ] = '1';
        printf( "    STY digit + %d       ; %s  @ %04X\n", i, digits, org );
        org += 3;
    }

    void inc( int i )
    {
        digits[i]++;
        printf( "    INC digit + %d       ; %s\n", i, digits );
        org += 3;
    }

// Main ===================================================================
int main( int nArg, char *aArg[] )
{
    digits[ NUM ] = 0; // NULL terminate for printf %s

/*
    printf( "    LDX #'0' + $80      ; 1,000,000  Ver 3\n" ); org += 2;
    printf( "    LDY #'1' + $80      ; A,BCD,EFG\n" ); org += 2;
    printf( "    STX digit - 1       ; 0,BCD,EFG\n" ); org += 3;
    for( i = 0; i < NUM; i++ )
    {
        digits[ i ] = '0';
        printf( "    STX digit + %d       ; 0,%c%c%c,%c%c%c  @ %04X\n"
            , i
            , digits[0]
            , digits[1]
            , digits[2]
            , digits[3]
            , digits[4]
            , digits[5]
            , org
        );
        org += 3;
    }
*/

#if 0
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
#endif

//  int end =    1000; //   $1568 <  1 KB
    int end =   10000; //   $8A98 ~ 33 KB
//  int end =  100000; //  $51E75 >325 KB
//  int end = 1000000; // $32E517 >  3 MB

    if( nArg > 1 )
        end = atoi( aArg[1] );

    for( i = 0; i < NUM; i++ )
        digits[ i ] = '0';

    for( i = 0; i < end; i++ )
    {
        int x = NUM-1;

        char before[ NUM+1 ];
        char after [ NUM+1 ];

        sprintf( before, "%0*d", NUM, i+0 );
        sprintf( after , "%0*d", NUM, i+1 );

        before[ NUM ] = 0;
        after [ NUM ] = 0;

        if( i % 10 == 0 )
            printf( "\n" );

        // Infer what the minimal changes are
        while( x > 0 )
        {
            int delta = after[x] - before[x];

#if DEBUG
            printf( "; BUG: [%d] before: %s\n", x, before );
            printf( "; BUG: [%d] after : %s\n", x, after  );
            printf( "; BUG: [%d] delta : %d\n", x, delta  );
#endif

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
    }

printf( "; END = %04X\n", org );

    return 0;
}

