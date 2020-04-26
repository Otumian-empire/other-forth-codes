\ cleans the screen and the stack
: cls page abort ;

\ SQUARE ( N -- N*N , calculate square )
: SQUARE ( N -- N*N )
    DUP ( N N )
    * ( N*N ) ;

\ DIFF.SQUARES ( A B -- A*A-B*B , difference of squares )
: DIFF.SQUARES ( A B -- A*A-B*B ) 
    SWAP SQUARE ( B A*A )
    SWAP SQUARE ( A*A B*B )
    - ( A*A - B*B ) ;

\ AVERAGE4 ( A B C D -- [A+B+C+D]/4 )
: AVERAGE4 ( A B C D -- [A+B+C+D]/4 )
    + ( A B C+D )
    + ( A B+C+D )
    + ( w = A+B+C+D )
    4 ( w 4 )
    / ( w / 4 ) ;

\ HMS>SECONDS ( HOURS MINUTES SECONDS -- TOTAL-SECONDS , convert )
: HMS>SECONDS ( HOURS MINUTES SECONDS -- TOTAL-SECONDS )
    SWAP ( HOURS SECONDS MINUTES )
    60 * ( HOURS SECONDS MINUTES*60 )
    + ( HOURS SECONDS+[MINUTES*60] )
    swap ( SECONDS+[MINUTES*60] HOURS )
    1200 * ( SECONDS+[MINUTES*60] HOURS*1200 )
    + ( SECONDS+[MINUTES*60]+[HOURS*1200] ) ;
