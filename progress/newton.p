
/*------------------------------------------------------------------------
    File        : newton.p
    Purpose     : 

    Syntax      :

    Description : Calculate the square root using Newton's method.
http://en.wikipedia.org/wiki/Newton's_method#Square_root_of_a_number

    Author(s)   : bo
    Created     : Fri Aug 03 06:44:41 PDT 2012
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */
DEFINE INPUT PARAMETER n AS INTEGER NO-UNDO.
DEFINE INPUT PARAMETER accuracy AS DECIMAL NO-UNDO.
DEFINE OUTPUT PARAMETER x AS DECIMAL NO-UNDO INITIAL 10.

DEFINE VARIABLE err AS DECIMAL NO-UNDO.
/* ***************************  Main Block  *************************** */
ASSIGN err = ABSOLUTE(EXP(x, 2) - n).
DO WHILE ABSOLUTE(err) >= accuracy:
    ASSIGN x = x - err / (2 * x).
    ASSIGN err = EXP(x, 2) - n.
END.