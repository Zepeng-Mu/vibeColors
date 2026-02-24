# vibeColors - Project Context

## Project Overview

**vibeColors** is an R package that provides a collection of color palettes designed for use with ggplot2. The package offers discrete and continuous color scales that integrate seamlessly with the ggplot2 plotting system.

### Key Features
- Multiple predefined color palettes (CBsafe1, Crimson, Plum, Azure, Turquoise, Emerald, Sunshine, Tangerine, AzureCrimson, AzurePlum, Avedon)
- Discrete color scales for categorical data (`scale_color_vibe()`, `scale_fill_vibe()`)
- Continuous color scales for continuous data (`scale_color_vibe_c()`, `scale_fill_vibe_c()`)
- Palette reversal and interpolation capabilities
- Full ggplot2 integration

## Project Structure

```
vibeColors/
├── R/                          # R source files
│   ├── palettes.R              # Palette definitions and retrieval functions
│   ├── scales.R                # ggplot2 scale functions
│   └── vibeColors-package.R    # Package documentation
├── tests/
│   ├── testthat/
│   │   └── test-palettes.R     # Unit tests
│   └── testthat.R              # Test runner
├── vignettes/
│   ├── vibeColors.Rmd          # Getting Started guide
│   └── creating-palettes.Rmd   # Guide for adding custom palettes
├── colors/                     # Palette preview images
├── man/                        # Roxygen-generated documentation
├── inst/                       # Additional package resources
├── DESCRIPTION                 # Package metadata and dependencies
├── NAMESPACE                   # Exported functions
└── test_palettes.R             # Manual test script with visual examples
```

## Building and Running

### Installation (Development)
```bash
# Load the package for development
devtools::load_all()

# Install the package
devtools::install()

# Install from GitHub (for users)
devtools::install_github("Zepeng-Mu/vibeColors")
```

### Testing
```bash
# Run all tests
devtools::test()

# Or use testthat directly
testthat::test_dir("tests/testthat")

# Run manual test script (visual examples)
Rscript test_palettes.R
```

### Documentation
```bash
# Generate documentation
devtools::document()

# Build and preview vignettes
devtools::build_vignettes()

# Build pkgdown site
pkgdown::build_site()
```

### Building the Package
```bash
# Check package
R CMD check .

# Build package
R CMD build .

# Install from source
R CMD INSTALL vibeColors_*.tar.gz
```

## Core Functions

### Palette Functions
- `vibe_palette(name, n = NULL, reverse = FALSE)` - Retrieve a palette by name
- `list_vibe_palettes()` - List all available palette names

### ggplot2 Scale Functions
- `scale_color_vibe(palette, reverse = FALSE, ...)` - Discrete color scale
- `scale_fill_vibe(palette, reverse = FALSE, ...)` - Discrete fill scale
- `scale_color_vibe_c(palette, reverse = FALSE, ...)` - Continuous color scale
- `scale_fill_vibe_c(palette, reverse = FALSE, ...)` - Continuous fill scale

## Development Conventions

### Code Style
- Uses **roxygen2** for documentation (functions documented with `#'` comments)
- Follows standard R package structure
- Functions use snake_case naming convention
- Exported functions are marked with `@export` tag

### Testing Practices
- Uses **testthat** framework for unit tests
- Tests located in `tests/testthat/` directory
- Test files follow naming convention: `test-<function>.R`
- Manual visual testing via `test_palettes.R` script

### Adding New Palettes
1. Add the palette to `vibe_palettes` list in `R/palettes.R`
2. Use meaningful names (e.g., color names, themes)
3. Define as character vector of hex color codes
4. Test with `vibe_palette("palette_name")` and visual examples

Example:
```r
vibe_palettes <- list(
  my_palette = c("#FF6B6B", "#4ECDC4", "#45B7D1")
)
```

### Documentation
- Run `devtools::document()` after adding/editing functions
- Update vignettes if adding significant features
- pkgdown configuration in `_pkgdown.yml` for website generation

## Dependencies

### Required
- R (>= 3.5.0)
- ggplot2 (>= 3.0.0)
- scales

### Development/Suggested
- testthat (>= 3.0.0) - Testing
- knitr, rmarkdown - Vignettes
- pkgdown (>= 2.0.0) - Documentation website
- devtools - Development workflow

## Common Workflows

### Using a Palette in ggplot2
```r
library(ggplot2)
library(vibeColors)

# Discrete data
ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_vibe("Crimson")

# Continuous data
ggplot(mtcars, aes(wt, mpg, color = hp)) +
  geom_point(size = 3) +
  scale_color_vibe_c("Azure")
```

### Palette Manipulation
```r
# Get raw colors
vibe_palette("Crimson")

# Get more colors via interpolation
vibe_palette("Crimson", n = 10)

# Reverse palette
vibe_palette("Crimson", reverse = TRUE)
```

## Key Files Reference

| File | Purpose |
|------|---------|
| `R/palettes.R` | Palette definitions and `vibe_palette()` function |
| `R/scales.R` | ggplot2 scale integration functions |
| `DESCRIPTION` | Package metadata, dependencies, version |
| `NAMESPACE` | Exported functions and imports |
| `test_palettes.R` | Comprehensive visual test script |
| `_pkgdown.yml` | pkgdown website configuration |
