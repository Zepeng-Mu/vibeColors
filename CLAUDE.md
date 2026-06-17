# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

`vibeColors` is an R package providing curated color palettes as ggplot2 discrete and continuous scales. Standard R package layout; `roxygen2` (markdown mode) generates `NAMESPACE` and `man/`.

## Common commands

Run from R (or `Rscript -e '...'`) in the package root:

```r
devtools::load_all()      # load package for interactive development
devtools::document()      # regenerate NAMESPACE + man/ after editing any roxygen comment or function signature
devtools::test()          # run the full testthat suite
devtools::check()         # full R CMD check
pkgdown::build_site()     # rebuild the docs/ website
```

Run a single test file or test:
```r
testthat::test_file("tests/testthat/test-palettes.R")
devtools::load_all(); testthat::test_file("tests/testthat/test-palettes.R", desc = "saturation = 0 produces grayscale colors")
```

`test_palettes.R` (repo root, not part of the package) is a manual visual smoke-test script run with `Rscript test_palettes.R`.

## Architecture

All palette data and logic flow from a single source:

- **`R/palettes.R`** — defines the internal (non-exported) `vibe_palettes` list. This is the single source of truth; everything else reads from it. Each palette is a named character vector of hex codes.
- **`R/helpers.R`** — retrieval/inspection functions: `vibe_palette()`, `vibe_color()`, `list_vibe_palettes()`, `view_vibe_palettes()`.
- **`R/scales.R`** — the ggplot2 scale wrappers (`scale_color_vibe`, `scale_fill_vibe`, `scale_color_vibe_c`, `scale_fill_vibe_c`) plus the internal `.adjust_saturation()` helper. Discrete scales wrap `discrete_scale()`; continuous (`_c`) scales wrap `scale_*_gradientn()`. All scales pull colors via `vibe_palette()`, then run them through `.adjust_saturation()`.

Note: the QWEN.md in this repo predates a refactor and incorrectly says retrieval functions live in `palettes.R` — they are in `helpers.R`.

## Palette naming conventions (these are load-bearing)

The three palette categories are distinguished only by how their vectors are named, and several functions depend on this:

- **Sequential/gradient** (e.g. `Azure`, `Crimson`, `FlexokiBlue`): names are weight strings like `"50"`, `"100"` … `"800"`.
- **Categorical** (e.g. `CBsafe1`, `Avedon`, `Benedict`): names are index strings `"1"`, `"2"`, …
- **Diverging** (e.g. `AzureCrimson`, `EmeraldTangerine`): **unnamed** vectors, built as two gradients with `"#FFFFFF"` in the middle.

`vibe_color("Azure500")` parses a combined string by matching the **longest** palette-name prefix, then looking up the remainder as a weight name. Diverging palettes are hard-coded in a `diverging_palettes` vector inside `vibe_color()` and deliberately error (they have no named weights) — when you add a new diverging palette, also add its name to that vector.

## Adding a palette

1. Add an entry to the `vibe_palettes` list in `R/palettes.R`, following the naming convention for its category.
2. If diverging, also add the name to the `diverging_palettes` vector in `vibe_color()` (`R/helpers.R`).
3. Update the palette tables in `README.md`.
4. Run `devtools::document()` and `devtools::test()`.
