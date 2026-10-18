       IDENTIFICATION DIVISION.
       PROGRAM-ID. PICTURES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NAME        PIC X(10)    VALUE "ADA".
       01  WS-AGE         PIC 9(3)     VALUE 36.
       01  WS-PRICE       PIC 9(4)V99  VALUE 19.95.
       PROCEDURE DIVISION.
           DISPLAY "Name:  [" WS-NAME "]".
           DISPLAY "Age:   " WS-AGE.
           DISPLAY "Price: " WS-PRICE.
           STOP RUN.
