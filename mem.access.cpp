/*
One of the fastest ways to count to 1,000,000
https://github.com/Michaelangel007/apple2_count_million
Michaelangel007

    g++ mem.access.cpp -o mem.access

    make mem.access
         mem.access > count.10000.s
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
    int org    = 0;
    int cycles = 0;


// Utility ________________________________________________________________

    // X = '0'
    void zer( int i )
    {
        digits[ i ] = '0';
        printf( "    STX digit + %d       ; %s  @ %04X\n", i, digits, org );
        org    += 3;
        cycles += 4; // 8E: stx $abs (+4)
    }

    // Y = '1'
    void one( int i )
    {
        digits[ i ] = '1';
        printf( "    STY digit + %d       ; %s  @ %04X\n", i, digits, org );
        org    += 3;
        cycles += 4; // 8C: sty $abs (+4)
    }

    void two( int i )
    {
        digits[ i ] = '2';
        printf( "    STA digit + %d       ; %s  @ %04X\n", i, digits, org );
        org    += 3;
        cycles += 4; // 8D: sta $abs +4
    }

    void inc( int i )
    {
        digits[i]++;
        printf( "    INC digit + %d       ; %s\n", i, digits );
        org    += 3;
        cycles += 6; // EEL inc $abs (+6)
    }

// Main ===================================================================
int main( int nArg, char *aArg[] )
{
    digits[ NUM ] = 0; // NULL terminate for printf %s

/*
    printf( "    LDA #'2' + $80" ); 
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

//  int end =    1000; //   $1568 <  1 KB
    int end =   10000; //   $8A98 ~ 33 KB
//  int end =  100000; //  $51E75 >325 KB
//  int end = 1000000; // $32E517 >  3 MB

    if( nArg > 1 )
        end = atoi( aArg[1] );

    for( i = 0; i < NUM; i++ )
        digits[ i ] = '0';

    printf( "; --- count.10000.s --- NOTE: This file was computer generated via: mem.access > count.10000.s\n" );

    cycles = 0;
    org    = 0x987; // skip prologue -- see: all.unrolled.s

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
        // Requires that we pre-load the X,Y,A regs with the constants 0, 1, 2, respectively.
        while( x > 0 )
        {
            int delta = after[x] - before[x];

#if DEBUG
            printf( "; BUG: [%d] before: %s\n", x, before );
            printf( "; BUG: [%d] after : %s\n", x, after  );
            printf( "; BUG: [%d] delta : %d\n", x, delta  );
#endif

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
    }
printf( "    RTS\n" ); org += 3; cycles += 6;
printf( "; PC     = %04X\n", org );
printf( "; CYCLES = %d\n", cycles );

    return 0;
}

