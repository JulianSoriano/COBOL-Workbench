       IDENTIFICATION DIVISION.
       PROGRAM-ID. DECIDE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-SCORE    PIC 9(3)  VALUE 82.
       01  WS-STATUS   PIC X     VALUE "A".
           88  IS-ACTIVE         VALUE "A".
           88  IS-CLOSED         VALUE "C".
       PROCEDURE DIVISION.
           IF WS-SCORE >= 50
               DISPLAY "Pass"
           ELSE
               DISPLAY "Fail"
           END-IF.
           IF WS-SCORE > 80 AND WS-SCORE NOT > 90
               DISPLAY "Grade B"
           END-IF.
           IF IS-ACTIVE
               DISPLAY "Account is active"
           END-IF.
           SET IS-CLOSED TO TRUE.
           DISPLAY "Status is now " WS-STATUS.
           STOP RUN.
