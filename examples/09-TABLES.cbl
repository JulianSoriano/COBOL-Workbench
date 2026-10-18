       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-I            PIC 99.
       01  WS-TOTAL        PIC 9(5)  VALUE 0.
       01  WS-SALES.
           05  WS-SALE     PIC 9(4)  OCCURS 5 TIMES.
       01  WS-TEAM.
           05  WS-CREW     OCCURS 3 TIMES.
               10  WS-C-NAME   PIC X(8).
               10  WS-C-ROLE   PIC X(10).
       PROCEDURE DIVISION.
           MOVE 120 TO WS-SALE(1).
           MOVE 340 TO WS-SALE(2).
           MOVE 95  TO WS-SALE(3).
           MOVE 450 TO WS-SALE(4).
           MOVE 210 TO WS-SALE(5).
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
               DISPLAY "Month " WS-I ": " WS-SALE(WS-I)
               ADD WS-SALE(WS-I) TO WS-TOTAL
           END-PERFORM.
           DISPLAY "Total: " WS-TOTAL.
           MOVE "GRACE"  TO WS-C-NAME(1).
           MOVE "ADMIRAL" TO WS-C-ROLE(1).
           MOVE "JEAN"   TO WS-C-NAME(2).
           MOVE "ANALYST" TO WS-C-ROLE(2).
           MOVE "MARY"   TO WS-C-NAME(3).
           MOVE "ENGINEER" TO WS-C-ROLE(3).
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 3
               DISPLAY WS-C-NAME(WS-I) WS-C-ROLE(WS-I)
           END-PERFORM.
           STOP RUN.
