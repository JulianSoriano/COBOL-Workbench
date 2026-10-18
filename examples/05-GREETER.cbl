       IDENTIFICATION DIVISION.
       PROGRAM-ID. GREETER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NAME     PIC X(20).
       01  WS-BORN     PIC 9(4).
       01  WS-AGE      PIC 9(3).
       PROCEDURE DIVISION.
           DISPLAY "What is your name?".
           ACCEPT WS-NAME.
           DISPLAY "What year were you born?".
           ACCEPT WS-BORN.
           COMPUTE WS-AGE = 2026 - WS-BORN.
           DISPLAY "Hello, " FUNCTION TRIM(WS-NAME) "!".
           DISPLAY "You turn " WS-AGE " this year.".
           STOP RUN.
