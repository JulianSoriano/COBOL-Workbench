# COBOL-Workbench
A tool for learning and building with COBOL code.

COBOL Workbench is a single HTML page that teaches COBOL and runs it right in your browser. There is nothing to install: download `index.html` and open it in Firefox or Chrome.

## What it does
- **Runs COBOL in the browser.** A built-in interpreter handles a beginner-friendly subset of the language: `DISPLAY`, `ACCEPT`, `MOVE`, `ADD` / `SUBTRACT` / `MULTIPLY` / `DIVIDE`, `COMPUTE`, `IF`, `EVALUATE`, every style of `PERFORM` loop, tables with `OCCURS`, 88-level condition names, `STRING`, `UNSTRING`, `INSPECT`, edited pictures such as `$$$,$$9.99`, and common intrinsic functions.
- **13 lessons with challenges.** They go from the layout of a program to a final project that prints a loan payment schedule. Each lesson has a **Check my answer** button and a hint.
- **An editor that knows COBOL's columns.** A column ruler marks Area A and Area B, the status bar says which area the cursor is in, and Tab jumps to the next column stop. Fixed and free format are both supported.
- **Plain-English errors.** For example, "Line 12: I can't find a data item called WS-TOTL," with the line highlighted.
- **Saves and opens `.cbl` files.** Save writes a standard COBOL source file to your computer. Open (or drag and drop) loads one back in. Programs are also kept in the browser between visits.

## Files
| Path | What it is |
|---|---|
| `index.html` | The whole app in one file |
| `examples/` | The 13 lesson programs as `.cbl` files |

## Compiling outside the browser
Saved `.cbl` files are ordinary COBOL, so they also build with GnuCOBOL:

```sh
sudo dnf install gnucobol      # Fedora
cobc -x examples/01-HELLO.cbl
./01-HELLO
```

## Not supported (yet)
File handling (`FD`, `OPEN`, `READ`, `WRITE`), `REDEFINES`, `COPY`, `CALL`, `SORT`, `SEARCH`, `EVALUATE ... ALSO`, and tables inside tables.

## Hosting it on GitHub Pages
In the repo, go to **Settings → Pages**, choose **Deploy from a branch**, pick `main` and `/ (root)`, and save. The app will then be live at `https://juliansoriano.github.io/COBOL-Workbench/`.
