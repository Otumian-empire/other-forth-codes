\ Write a word called DEDUCT that subtracts a value from a variable containing your checking account balance.
\ Assume the balance is in dollars. Print the balance. Print a warning if the balance is negative.
\ VARIABLE ACCOUNT
\ : DEDUCT ( n -- , subtract N from balance )
\ ????????????????????????????????? ( you fill this in )
\ ;
\ 300 ACCOUNT ! ( initial funds )
\ 40 DEDUCT ( prints 260 )
\ 200 DEDUCT ( print 60 )
\ 100 DEDUCT ( print -40 and give warning! )


variable account

: DEDUCT ( n -- , subtract N from balance )
    account @ ( n acc)
    swap ( acc n )
    -    ( y = acc - n )
    dup  ( y y )
    account ! ( y acc=y )
    0< if
        ." account is low"
    then cr
;


300 ACCOUNT ! ( initial funds )
cr ." accoutv= " account ?
40 DEDUCT ( prints 260 ) cr account ?
200 DEDUCT ( print 60 ) cr account ?
100 DEDUCT ( print -40 and give warning! ) cr account ?

