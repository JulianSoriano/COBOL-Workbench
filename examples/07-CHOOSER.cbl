       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHOOSER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-DAY      PIC 9      VALUE 6.
       01  WS-TEMP     PIC S9(3)  VALUE -4.
       PROCEDURE DIVISION.
           EVALUATE WS-DAY
               WHEN 1 THRU 5
                   DISPLAY "Weekday"
               WHEN 6
               WHEN 7
                   DISPLAY "Weekend"
               WHEN OTHER
                   DISPLAY "Not a day"
           END-EVALUATE.
           EVALUATE TRUE
               WHEN WS-TEMP < 0
                   DISPLAY "Freezing"
               WHEN WS-TEMP < 20
                   DISPLAY "Cool"
               WHEN OTHER
                   DISPLAY "Warm"
           END-EVALUATE.
           STOP RUN.
