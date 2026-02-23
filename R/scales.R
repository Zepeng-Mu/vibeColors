#' Discrete Color Scale for Vibe Palettes
#'
#' Apply a vibe color palette to discrete data in ggplot2.
#'
#' @param palette The name of the palette to use. Use `list_vibe_palettes()`
#'   to see available options.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#' @param ... Additional arguments passed to `ggplot2::discrete_scale()`.
#'
#' @return A ggplot2 scale object.
#'
#' @export
#' @examples
#' # Example usage (when palettes are defined):
#' # library(ggplot2)
#' # ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
#' #   geom_bar() +
#' #   scale_color_vibe("palette_name")
scale_color_vibe <- function(palette, reverse = FALSE, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)

  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "vibe",
    palette = function(n) {
      if (n > length(pal)) {
        warning(
          "Insufficient values in palette. ", n, " values needed, but only ",
          length(pal), " available. Interpolating colors.",
          call. = FALSE
        )
        grDevices::colorRampPalette(pal)(n)
      } else {
        pal[1:n]
      }
    },
    ...
  )
}

#' Discrete Fill Scale for Vibe Palettes
#'
#' Apply a vibe color palette to fill aesthetics in ggplot2.
#'
#' @param palette The name of the palette to use. Use `list_vibe_palettes()`
#'   to see available options.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#' @param ... Additional arguments passed to `ggplot2::discrete_scale()`.
#'
#' @return A ggplot2 scale object.
#'
#' @export
#' @examples
#' # Example usage (when palettes are defined):
#' # library(ggplot2)
#' # ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
#' #   geom_bar() +
#' #   scale_fill_vibe("palette_name")
scale_fill_vibe <- function(palette, reverse = FALSE, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)

  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "vibe",
    palette = function(n) {
      if (n > length(pal)) {
        warning(
          "Insufficient values in palette. ", n, " values needed, but only ",
          length(pal), " available. Interpolating colors.",
          call. = FALSE
        )
        grDevices::colorRampPalette(pal)(n)
      } else {
        pal[1:n]
      }
    },
    ...
  )
}

#' Continuous Color Scale for Vibe Palettes
#'
#' Apply a vibe color palette to continuous data in ggplot2.
#'
#' @param palette The name of the palette to use. Use `list_vibe_palettes()`
#'   to see available options.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#' @param ... Additional arguments passed to `ggplot2::scale_color_gradientn()`.
#'
#' @return A ggplot2 scale object.
#'
#' @export
#' @examples
#' # Example usage (when palettes are defined):
#' # library(ggplot2)
#' # ggplot(mtcars, aes(wt, mpg, color = hp)) +
#' #   geom_point() +
#' #   scale_color_vibe_c("palette_name")
scale_color_vibe_c <- function(palette, reverse = FALSE, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)

  ggplot2::scale_color_gradientn(colors = pal, ...)
}

#' Continuous Fill Scale for Vibe Palettes
#'
#' Apply a vibe color palette to continuous fill aesthetics in ggplot2.
#'
#' @param palette The name of the palette to use. Use `list_vibe_palettes()`
#'   to see available options.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#' @param ... Additional arguments passed to `ggplot2::scale_fill_gradientn()`.
#'
#' @return A ggplot2 scale object.
#'
#' @export
#' @examples
#' # Example usage (when palettes are defined):
#' # library(ggplot2)
#' # ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#' #   geom_tile() +
#' #   scale_fill_vibe_c("palette_name")
scale_fill_vibe_c <- function(palette, reverse = FALSE, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)

  ggplot2::scale_fill_gradientn(colors = pal, ...)
}
