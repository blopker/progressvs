
/*------------------------------------------------------------------------
    File        : fib.p
    Purpose     : 

    Syntax      :

    Description : Recursive Fibonacci number generator.

    Author(s)   : admin
    Created     : Thu Aug 02 08:13:36 PDT 2012
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */
DEFINE INPUT PARAMETER n AS INTEGER NO-UNDO.
DEFINE OUTPUT PARAMETER f AS INTEGER NO-UNDO.

FUNCTION fib RETURNS INTEGER (INPUT n AS INTEGER):
    IF n EQ 0 OR n EQ 1 THEN RETURN n.
    RETURN fib(n - 1) + fib(n - 2).
END.

ASSIGN f = fib(n).