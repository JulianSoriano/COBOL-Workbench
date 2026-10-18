       IDENTIFICATION DIVISION.
       PROGRAM-ID. REPORTS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-AMOUNT   PIC 9(6)V99   VALUE 1234.5.
       01  WS-REFUND   PIC S9(4)V99  VALUE -42.75.
       01  WS-OUT-1    PIC ZZZ,ZZ9.99.
       01  WS-OUT-2    PIC $$$,$$9.99.
       01  WS-OUT-3    PIC ***,**9.99.
       01  WS-OUT-4    PIC -,--9.99.
       01  WS-OUT-5    PIC Z,ZZ9.99CR.
       PROCEDURE DIVISION.
           DISPLAY "Raw amount:   " WS-AMOUNT.
           MOVE WS-AMOUNT TO WS-OUT-1.
           DISPLAY "ZZZ,ZZ9.99    [" WS-OUT-1 "]".
           MOVE WS-AMOUNT TO WS-OUT-2.
           DISPLAY "$$$,$$9.99    [" WS-OUT-2 "]".
           MOVE WS-AMOUNT TO WS-OUT-3.
           DISPLAY "***,**9.99    [" WS-OUT-3 "]".
           DISPLAY "Raw refund:   " WS-REFUND.
           MOVE WS-REFUND TO WS-OUT-4.
           DISPLAY "-,--9.99      [" WS-OUT-4 "]".
           MOVE WS-REFUND TO WS-OUT-5.
           DISPLAY "Z,ZZ9.99CR    [" WS-OUT-5 "]".
           STOP RUN.
