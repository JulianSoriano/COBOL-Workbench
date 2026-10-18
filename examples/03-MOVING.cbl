       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVING.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-SHORT    PIC X(4).
       01  WS-LONG     PIC X(12).
       01  WS-NUM      PIC 9(3).
       01  WS-SMALL    PIC 99.
       PROCEDURE DIVISION.
           MOVE "COBOLISFUN" TO WS-SHORT.
           MOVE "HI" TO WS-LONG.
           MOVE 7 TO WS-NUM.
           MOVE 1234 TO WS-SMALL.
           DISPLAY "[" WS-SHORT "]".
           DISPLAY "[" WS-LONG "]".
           DISPLAY "WS-NUM:   " WS-NUM.
           DISPLAY "WS-SMALL: " WS-SMALL.
           STOP RUN.
