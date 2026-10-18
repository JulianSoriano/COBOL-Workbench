       IDENTIFICATION DIVISION.
       PROGRAM-ID. FUNCS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-TEXT     PIC X(20)    VALUE "  mixed Case text".
       01  WS-NUM      PIC 9(3)     VALUE 144.
       01  WS-ROOT     PIC 9(3)V99.
       01  WS-SHOW     PIC ZZ9.99.
       01  WS-NOW      PIC X(21).
       PROCEDURE DIVISION.
           DISPLAY "[" FUNCTION UPPER-CASE(WS-TEXT) "]".
           DISPLAY "[" FUNCTION TRIM(WS-TEXT) "]".
           DISPLAY "Length: " FUNCTION LENGTH(WS-TEXT).
           COMPUTE WS-ROOT = FUNCTION SQRT(WS-NUM).
           MOVE WS-ROOT TO WS-SHOW.
           DISPLAY "Square root of 144: " WS-SHOW.
           DISPLAY "Max of 3 9 4: " FUNCTION MAX(3 9 4).
           DISPLAY "17 mod 5: " FUNCTION MOD(17 5).
           MOVE FUNCTION CURRENT-DATE TO WS-NOW.
           DISPLAY "Today: " WS-NOW(1:4) "-" WS-NOW(5:2) "-"
                   WS-NOW(7:2).
           STOP RUN.
