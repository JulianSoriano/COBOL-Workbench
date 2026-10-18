       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEXTWORK.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-FIRST    PIC X(10)  VALUE "GRACE".
       01  WS-LAST     PIC X(10)  VALUE "HOPPER".
       01  WS-FULL     PIC X(25).
       01  WS-CSV      PIC X(30)  VALUE "COBOL,1959,CODASYL".
       01  WS-LANG     PIC X(10).
       01  WS-YEAR     PIC X(4).
       01  WS-ORG      PIC X(10).
       01  WS-COUNT    PIC 99     VALUE 0.
       PROCEDURE DIVISION.
           STRING WS-FIRST DELIMITED BY SPACE
                  " "      DELIMITED BY SIZE
                  WS-LAST  DELIMITED BY SPACE
                  INTO WS-FULL
           END-STRING.
           DISPLAY "Full name: " WS-FULL.
           UNSTRING WS-CSV DELIMITED BY ","
               INTO WS-LANG WS-YEAR WS-ORG
           END-UNSTRING.
           DISPLAY "Language: " WS-LANG.
           DISPLAY "Year:     " WS-YEAR.
           DISPLAY "Group:    " WS-ORG.
           INSPECT WS-FULL TALLYING WS-COUNT FOR ALL "R".
           DISPLAY "R appears " WS-COUNT " times".
           DISPLAY "First 5:  " WS-FULL(1:5).
           INSPECT WS-FULL REPLACING ALL "P" BY "*".
           DISPLAY "Replaced: " WS-FULL.
           STOP RUN.
