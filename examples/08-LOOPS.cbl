       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-COUNT    PIC 99  VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM SAY-HELLO.
           PERFORM SAY-HELLO 2 TIMES.
           PERFORM COUNT-UP UNTIL WS-COUNT = 3.
           PERFORM 2 TIMES
               DISPLAY "Inline loop"
           END-PERFORM.
           STOP RUN.
       SAY-HELLO.
           DISPLAY "Hello from a paragraph".
       COUNT-UP.
           ADD 1 TO WS-COUNT.
           DISPLAY "Count: " WS-COUNT.
