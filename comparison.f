: cls page abort ;

\ max, min, diff, sum, minus, negative, product, abs

: max ( a b -- greater )
    2dup ( a b a b )
    > if ( a b )
        drop ( a )
    else
        nip ( b )
    then ;

: min ( a b -- lesser )
    2dup ( a b a b )
    < if ( a b )
        drop ( a )
    else
        nip ( b )
    then ;

: negative ( n -- -1*n )
    -1 * ;

: abs ( n -- absolute value of n )
    dup ( n n )
    0< if
        negative
    then ;

: minus ( a b -- a-b )
    - ;

: diff ( a b -- difference between a and b )
    minus abs ;

: sum ( a b -- a+b )
    + ;

: product ( a b -- ab )
    * ;
