# vibeColors

<!-- badges: start -->
<!-- badges: end -->

A collection of color palettes designed for use with ggplot2. Provides discrete and continuous color scales that integrate seamlessly with the ggplot2 plotting system.

## Installation

You can install the development version of vibeColors from GitHub with:

```r
# install.packages("devtools")
devtools::install_github("Zepeng-Mu/vibeColors")
```

## Usage

```r
library(ggplot2)
library(vibeColors)

# List available palettes
list_vibe_palettes()

# Use a discrete color scale
ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_vibe("palette_name")

# Use a continuous color scale
ggplot(mtcars, aes(wt, mpg, color = hp)) +
  geom_point(size = 3) +
  scale_color_vibe_c("palette_name")
```

## License

This package is licensed under the MIT License.
