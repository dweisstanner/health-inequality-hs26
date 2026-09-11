HEALTH INEQUALITY AND PUBLIC POLICY — HS26

This is the revised SESSION-CENTRIC master project.

OPEN:
  health-inequality-hs26.Rproj

Each teaching session now has ONE folder:

sessions/
  01-what-is-health-inequality/
    index.qmd       = online script / student website page
    slides.qmd      = presentation used in class
    images/         = images used by either
    data/           = session-specific data
    code/           = session-specific code
    materials/      = handouts, PDFs, etc.

The same pattern exists for Sessions 02–14.

WORKFLOW:
1. Open the folder for the session you are preparing.
2. Develop index.qmd and slides.qmd in parallel.
3. Put shared images in that session's images/ folder.
4. Put exercises/code/data/materials in the same session folder.
5. Render index.qmd to inspect the student page.
6. Render slides.qmd to inspect the Reveal.js presentation.
7. Render the whole project when you want to update the complete website.

GLOBAL FILES:
  index.qmd       = course homepage
  syllabus.qmd    = syllabus
  resources/      = material relevant across sessions
  archive/        = untouched 2025 PowerPoints and original syllabus

DO NOT edit _site/ manually. Quarto generates it.

SESSION 1 IS ALREADY POPULATED:
  sessions/01-what-is-health-inequality/index.qmd
  sessions/01-what-is-health-inequality/slides.qmd
  sessions/01-what-is-health-inequality/images/
  sessions/01-what-is-health-inequality/materials/

The 2025 PowerPoints remain untouched under:
  archive/slides-2025/
