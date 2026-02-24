# vibeColors Package Guidelines

## Code Style

- **Naming:** Use `snake_case` for all functions and variables
- **Scale naming:** Follow pattern `scale_{color|fill}_vibe[_c]` where `_c` suffix indicates continuous scales
- **Documentation:** Use roxygen2 for all exported functions with `@param`, `@return`, `@export`, and `@examples`
  - Reference parameters/functions using backticks: `` `name` ``
  - Include `call. = FALSE` in error/warning messages
  - Add placeholder examples with comments when features are incomplete
- **Palette definitions:** Add inline comments with color names next to hex codes (see [R/palettes.R](../R/palettes.R#L15-L25))

## Package Architecture

**Dual-purpose design:**
The package serves two use cases:
1. **ggplot2 integration:** Scale functions for seamless plotting
2. **Direct palette access:** Users can retrieve palettes as vectors via `vibe_palette()` for custom use

**Palette system:**
- All palettes defined in `vibe_palettes` list in [R/palettes.R](../R/palettes.R#L14)
- Never access `vibe_palettes` directly—always use `vibe_palette()` function
- `vibe_palette(name, n, reverse)` handles validation, interpolation, and reversal
- Returns character vector of hex codes for both internal use and user-facing API

**Scale integration with ggplot2:**
- Discrete scales: Use `ggplot2::discrete_scale()` with palette function
  - Warn and interpolate when `n > length(pal)`
  - See [R/scales.R](../R/scales.R#L19-L36) for pattern
- Continuous scales: Use `ggplot2::scale_{color|fill}_gradientn(colors = pal)`
- All scales accept `reverse` parameter and `...` for ggplot2 passthrough
- Scales internally call `vibe_palette()` to retrieve colors

## Build & Test

```r
devtools::document()     # Generate roxygen docs (NAMESPACE, man/)
devtools::test()        # Run testthat suite
devtools::check()       # Full R CMD check
devtools::install()     # Install package locally
```

**Dependencies:**
- Imports: ggplot2 (>= 3.0.0), scales
- Suggests: testthat (>= 3.0.0), knitr, rmarkdown

## Test Conventions

- Use `skip_if(length(list_vibe_palettes()) == 0)` when tests require palettes ([tests/testthat/test-palettes.R](../tests/testthat/test-palettes.R#L14))
- Validate hex format with `expect_true(all(grepl("^#", pal)))`
- Test error messages for non-existent palettes

## File Organization

- **R/palettes.R**: Palette data + `vibe_palette()` + `list_vibe_palettes()`
- **R/scales.R**: All scale functions (discrete/continuous, color/fill)
- **R/vibeColors-package.R**: Package-level documentation
- **tests/testthat/**: testthat unit tests

**Adding features:**
- New palette → Add to `vibe_palettes` list in palettes.R
- New scale → Add to scales.R following existing 4 functions as templates
