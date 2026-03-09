# vibeColors 0.0.1

## Initial Release

### New Features

* Added 13 curated color palettes:
  - **Sequential palettes**: Crimson, Plum, Azure, Turquoise, Emerald, Sunshine, Tangerine
  - **Diverging palettes**: AzureCrimson, AzurePlum, TurquoiseTangerine, EmeraldTangerine, EmeraldCrimson
  - **Categorical palettes**: CBsafe1, Avedon, Benedict

* Core palette functions:
  - `vibe_palette()`: Retrieve color palettes by name with optional reversal and interpolation
  - `vibe_color()`: Get specific colors by name (e.g., "Azure100", "Avedon1")
  - `list_vibe_palettes()`: List all available palette names
  - `view_vibe_palettes()`: Visualize palettes with colored tiles

* ggplot2 integration:
  - `scale_color_vibe()` and `scale_fill_vibe()`: Discrete color scales
  - `scale_color_vibe_c()` and `scale_fill_vibe_c()`: Continuous color scales
  - Full support for palette reversal with `reverse` parameter
  - Automatic color interpolation when requesting more colors than palette contains

### Documentation

* Created comprehensive vignettes:
  - "Getting Started with vibeColors": Basic usage and examples
  - "Creating Custom Palettes": Guide for adding custom palettes

* Added pkgdown documentation site

### Initial Package Infrastructure

* Set up complete package structure with R CMD check compliance
* Added comprehensive test suite with testthat
* Included LICENSE (MIT)
* Created README with badges and usage examples
