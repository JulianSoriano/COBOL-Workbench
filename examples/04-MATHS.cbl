       IDENTIFICATION DIVISION.
       PROGRAM-ID. MATHS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-A        PIC 9(3)     VALUE 20.
       01  WS-B        PIC 9(3)     VALUE 6.
       01  WS-RESULT   PIC 9(4).
       01  WS-REM      PIC 9(3).
       01  WS-AVG      PIC 9(3)V99.
       01  WS-SHOW     PIC ZZZ9.99.
       PROCEDURE DIVISION.
           ADD WS-A TO WS-B GIVING WS-RESULT.
           DISPLAY "20 + 6  = " WS-RESULT.
           SUBTRACT WS-B FROM WS-A GIVING WS-RESULT.
           DISPLAY "20 - 6  = " WS-RESULT.
           MULTIPLY WS-A BY WS-B GIVING WS-RESULT.
           DISPLAY "20 x 6  = " WS-RESULT.
           DIVIDE WS-A BY WS-B GIVING WS-RESULT REMAINDER WS-REM.
           DISPLAY "20 / 6  = " WS-RESULT " remainder " WS-REM.
           COMPUTE WS-AVG ROUNDED = (WS-A + WS-B) / 3.
           MOVE WS-AVG TO WS-SHOW.
           DISPLAY "26 / 3  = " WS-SHOW.
           STOP RUN.
