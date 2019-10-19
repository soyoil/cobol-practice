       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I    PIC 9(3).
       PROCEDURE DIVISION.
       MAIN.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 100
             EVALUATE FUNCTION MOD(I 3) = ZERO
                   ALSO FUNCTION MOD(I 5) = ZERO
               WHEN TRUE ALSO TRUE
                   DISPLAY "FIZZBUZZ"
               WHEN TRUE ALSO FALSE
                   DISPLAY "FIZZ"
               WHEN FALSE ALSO TRUE
                   DISPLAY "BUZZ"
               WHEN OTHER
                   DISPLAY I(3 - FUNCTION INTEGER(FUNCTION LOG10(I)):)
             END-EVALUATE
           END-PERFORM.
           STOP RUN.
       END PROGRAM FIZZBUZZ.