# vibeColors

<!-- badges: start -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

<div class="alert alert-info">
<strong>Note:</strong> This document is drafted by AI and verified by human authors. Please report any issues.
</div>

A collection of aesthetically pleasing color palettes designed for data visualization with ggplot2. Provides discrete and continuous color scales that integrate seamlessly with the ggplot2 plotting system, along with utility functions for working with colors.

## Features

- **13 curated color palettes** inspired by art and design
- **Seamless ggplot2 integration** with discrete and continuous scales
- **Saturation adjustment** to fine-tune colors for your visualization
- **Palette reversal** for flexible color ordering
- **Color interpolation** to generate additional colors when needed
- **Visualization tools** to preview all available palettes

## Installation

You can install the development version of vibeColors from GitHub with:

```r
# install.packages("devtools")
devtools::install_github("Zepeng-Mu/vibeColors")
```

## Quick Start

```r
library(ggplot2)
library(vibeColors)

# List available palettes
list_vibe_palettes()
```

## Palette Preview

```r
view_vibe_palettes()
```

![](man/figures/colors.png)


### Sequential Palettes (Gradient)

These palettes are ideal for continuous data, showing ordered numeric values from light to dark.

| Palette | Description | Shades |
|---------|-------------|--------|
| Crimson | Deep reds | 50-700 |
| Plum | Rich purples | 50-700 |
| Azure | Cool blues | 50-700 |
| Turquoise | Tropical blues | 50-700 |
| Emerald | Forest greens | 50-700 |
| Sunshine | Bright yellows | 50-700 |
| Tangerine | Warm oranges | 50-700 |

### Diverging Palettes

These palettes are ideal for data with a meaningful central value, showing divergence in two directions.

| Palette | Colors |
|---------|--------|
| AzureCrimson | Blue → White → Red |
| AzurePlum | Blue → White → Purple |
| TurquoiseTangerine | Teal → White → Orange |
| EmeraldTangerine | Green → White → Orange |
| EmeraldCrimson | Green → White → Red |

### Categorical Palettes

These palettes are ideal for categorical data with many distinct groups.

| Palette | Colors |
|---------|--------|
| CBsafe1 | Colorblind-safe palette with 11 colors |
| Avedon | Warm earth tones (11 colors) |
| Benedict | Blue to rose gradient (13 colors) |

## Usage

### List All Palettes

```r
# View all available palettes
list_vibe_palettes()
```

### Visualize Palettes

```r
# View all palettes
view_vibe_palettes()

# View specific palettes
view_vibe_palettes(c("Crimson", "Azure", "Avedon"))
```

### Discrete Scales (Categorical Data)

Use discrete scales when mapping categorical variables:

```r
# Discrete fill scale
ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_vibe("Avedon") +
  labs(title = "Cars by Cylinder", fill = "Cylinders")

# Discrete color scale for scatter plots
ggplot(mtcars, aes(wt, mpg, color = factor(am))) +
  geom_point(size = 3) +
  scale_color_vibe("Benedict") +
  labs(title = "Weight vs MPG", color = "Transmission")
```

### Continuous Scales (Numeric Data)

Use continuous scales when mapping numeric variables:

```r
# Continuous color scale
ggplot(mtcars, aes(wt, mpg, color = hp)) +
  geom_point(size = 3) +
  scale_color_vibe_c("Azure") +
  labs(title = "Weight vs MPG", color = "Horsepower")

# Continuous fill scale for heatmaps
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_vibe_c("Turquoise") +
  labs(title = "Old Faithful Eruptions")
```

### Adjusting Palette Options

All scale functions support additional customization:

```r
# Reverse palette order
scale_fill_vibe("Crimson", reverse = TRUE)

# Adjust saturation (0 = grayscale, 1 = original, 2 = more saturated)
scale_color_vibe_c("Azure", saturation = 0.5)  # desaturated
scale_color_vibe_c("Azure", saturation = 1.5)   # more vibrant
```

### Using Individual Colors

You can extract specific colors from palettes:

```r
# Get a specific color (palette + weight)
vibe_color("Azure500")
vibe_color("Crimson100")

# Get multiple colors
vibe_color(c("Azure100", "Azure500", "Azure700"))
```

### Get a Palette

```r
# Get all colors from a palette
vibe_palette("Avedon")

# Get a specific number of colors (interpolated if needed)
vibe_palette("Azure", n = 5)

# Reverse the palette
vibe_palette("Crimson", reverse = TRUE)
```

## License

This package is licensed under the [MIT License](LICENSE).

## Acknowledgements

Some color palettes in this package are inspired by or adapted from [MoMAColors](https://github.com/BlakeRMills/MoMAColors).

---

Made with ❤️ by [Zepeng Mu](https://github.com/Zepeng-Mu)
