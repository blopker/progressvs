
/*------------------------------------------------------------------------
    File        : test.p
    Purpose     : 

    Syntax      :

    Description : Used to run and time tests.

    Author(s)   : admin
    Created     : Thu Aug 02 08:30:34 PDT 2012
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */
DEFINE VARIABLE iStartTime AS DATETIME-TZ NO-UNDO.
DEFINE VARIABLE iStopTime AS DATETIME-TZ NO-UNDO.
DEFINE VARIABLE iTimeDiff AS INTEGER NO-UNDO.
DEFINE VARIABLE i AS INTEGER NO-UNDO.
DEFINE VARIABLE out AS DECIMAL NO-UNDO.
/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
FUNCTION fib RETURNS INTEGER (INPUT n AS INTEGER):
    IF n EQ 0 OR n EQ 1 THEN RETURN n.
    RETURN fib(n - 1) + fib(n - 2).
END.

FUNCTION newton RETURNS DECIMAL (INPUT n AS INTEGER, INPUT accuracy AS DECIMAL):
    DEFINE VARIABLE err AS DECIMAL NO-UNDO.
    DEFINE VARIABLE ans AS DECIMAL NO-UNDO.
    ASSIGN ans = 10.
    ASSIGN err = ABSOLUTE(EXP(ans, 2) - n).
    DO WHILE ABSOLUTE(err) >= accuracy:
        ASSIGN ans = ans - err / (2 * ans).
        ASSIGN err = EXP(ans, 2) - n.
    END.
    RETURN ans.
END.

ETIME(TRUE).
DO i = 0 TO 50000:
    newton(89262175, .0001).
END.
MESSAGE "Total time for Newton's method: " ETIME / 1000.

ETIME(TRUE).
DO i = 0 TO 100:
    fib(20).
END.
MESSAGE "Total time for Fibonacci's number: " ETIME / 1000.
