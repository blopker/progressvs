
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
DEFINE VARIABLE out AS INTEGER NO-UNDO.
/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */

ETIME(TRUE).
DO i = 0 TO 30000:
    RUN newton.p (INPUT 89262175, INPUT .0001, OUTPUT out).
END.
MESSAGE "Total time for Newton's method:".
MESSAGE ETIME / 100.

ETIME(TRUE).
DO i = 0 TO 1000:
    RUN fib.p (INPUT 20, OUTPUT out).
END.
MESSAGE "Total time for Fibonacci's number:".
MESSAGE ETIME / 1000.