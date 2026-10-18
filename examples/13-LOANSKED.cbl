       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOANSKED.
      * Monthly payment and first-year schedule for a loan.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-PRINCIPAL    PIC 9(7)V99  VALUE 300000.
       01  WS-RATE         PIC 9V9(4)   VALUE 0.0500.
       01  WS-YEARS        PIC 99       VALUE 25.
       01  WS-MONTHS       PIC 999.
       01  WS-R            PIC 9V9(8).
       01  WS-PAYMENT      PIC 9(6)V99.
       01  WS-BALANCE      PIC 9(7)V99.
       01  WS-INTEREST     PIC 9(6)V99.
       01  WS-TOTAL-INT    PIC 9(7)V99  VALUE 0.
       01  WS-MONTH        PIC 999.
       01  WS-D-MONTH      PIC ZZ9.
       01  WS-D-MONEY      PIC $$$,$$9.99.
       01  WS-D-BAL        PIC $$,$$$,$$9.99.
       PROCEDURE DIVISION.
       MAIN-PARA.
           COMPUTE WS-MONTHS = WS-YEARS * 12.
           COMPUTE WS-R = WS-RATE / 12.
           COMPUTE WS-PAYMENT ROUNDED =
               WS-PRINCIPAL * WS-R / (1 - (1 + WS-R) ** (- WS-MONTHS)).
           MOVE WS-PAYMENT TO WS-D-MONEY.
           DISPLAY "Monthly payment: " WS-D-MONEY.
           DISPLAY " ".
           DISPLAY "Month    Interest        Balance".
           MOVE WS-PRINCIPAL TO WS-BALANCE.
           PERFORM SHOW-MONTH
               VARYING WS-MONTH FROM 1 BY 1 UNTIL WS-MONTH > 12.
           MOVE WS-TOTAL-INT TO WS-D-BAL.
           DISPLAY "Year 1 interest: " WS-D-BAL.
           STOP RUN.
       SHOW-MONTH.
           COMPUTE WS-INTEREST ROUNDED = WS-BALANCE * WS-R.
           ADD WS-INTEREST TO WS-TOTAL-INT.
           COMPUTE WS-BALANCE =
               WS-BALANCE - (WS-PAYMENT - WS-INTEREST).
           MOVE WS-MONTH TO WS-D-MONTH.
           MOVE WS-INTEREST TO WS-D-MONEY.
           MOVE WS-BALANCE TO WS-D-BAL.
           DISPLAY "  " WS-D-MONTH "  " WS-D-MONEY "  " WS-D-BAL.
