: cls page abort ;
\ Write a word called LOWERCASE? that returns TRUE if the number on top of the stack is an ASCII lowercase
\ character. An ASCII 'a' is 97 . An ASCII 'z' is 122 . Test using the characters " A ` a q z { ".
\ CHAR A LOWERCASE? . ( should print 0 )
\ CHAR a LOWERCASE? . ( should print -1 )

: LOWERCASE        ( n -- )
    dup            ( n n )
    96 > if        ( n > 96 )
        dup        ( n n )
        123 < if   ( n < 123 )
        -1         ( n flag[-1] )
        else 0     ( n flag[0] )
        then
    else 0         ( n flag[0] )
    then nip       ( flag ) ;
