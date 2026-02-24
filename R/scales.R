#' Discrete Color Scale for Vibe Palettes
#'
#' Apply a vibe color palette to discrete data in ggplot2.
#'
#' @param palette The name of the palette to use. Use `list_vibe_palettes()`
#'   to see available options.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#' @param saturation Numeric value between 0 and 2 to adjust color saturation.
#'   Values less than 1 desaturate colors (0 = grayscale), values greater than 1
#'   increase saturation. Default is 1 (no adjustment).
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
#' #
#' # # Adjust saturation
#' # scale_color_vibe("Crimson", saturation = 0.5)  # desaturated
#' # scale_color_vibe("Crimson", saturation = 1.5)  # more saturated
scale_color_vibe <- function(palette, reverse = FALSE, saturation = 1, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)
  pal <- .adjust_saturation(pal, saturation)

  ggplot2::discrete_scale(
    aesthetics = "colour",
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
#' @param saturation Numeric value between 0 and 2 to adjust color saturation.
#'   Values less than 1 desaturate colors (0 = grayscale), values greater than 1
#'   increase saturation. Default is 1 (no adjustment).
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
scale_fill_vibe <- function(palette, reverse = FALSE, saturation = 1, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)
  pal <- .adjust_saturation(pal, saturation)

  ggplot2::discrete_scale(
    aesthetics = "fill",
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
#' @param saturation Numeric value between 0 and 2 to adjust color saturation.
#'   Values less than 1 desaturate colors (0 = grayscale), values greater than 1
#'   increase saturation. Default is 1 (no adjustment).
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
#' #
#' # # Adjust saturation
#' # scale_color_vibe_c("Azure", saturation = 0.5)  # desaturated
#' # scale_color_vibe_c("Azure", saturation = 1.5)  # more saturated
scale_color_vibe_c <- function(palette, reverse = FALSE, saturation = 1, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)
  pal <- .adjust_saturation(pal, saturation)

  ggplot2::scale_color_gradientn(colors = pal, ...)
}

#' Continuous Fill Scale for Vibe Palettes
#'
#' Apply a vibe color palette to continuous fill aesthetics in ggplot2.
#'
#' @param palette The name of the palette to use. Use `list_vibe_palettes()`
#'   to see available options.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#' @param saturation Numeric value between 0 and 2 to adjust color saturation.
#'   Values less than 1 desaturate colors (0 = grayscale), values greater than 1
#'   increase saturation. Default is 1 (no adjustment).
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
scale_fill_vibe_c <- function(palette, reverse = FALSE, saturation = 1, ...) {
  pal <- vibe_palette(name = palette, reverse = reverse)
  pal <- .adjust_saturation(pal, saturation)

  ggplot2::scale_fill_gradientn(colors = pal, ...)
}

#' Adjust Color Saturation
#'
#' Internal helper function to adjust the saturation of a vector of hex colors.
#' Converts colors to HSV space, modifies the saturation channel, and converts
#' back to hex.
#'
#' @param colors Character vector of hex color codes.
#' @param saturation Numeric value for saturation adjustment. 1 = no change,
#'   0 = grayscale, >1 = more saturated.
#' @return Character vector of adjusted hex color codes.
#' @noRd
.adjust_saturation <- function(colors, saturation = 1) {
  # Clamp saturation to reasonable range
  saturation <- max(0, min(2, saturation))

  # Convert hex to RGB then to HSV
  rgb_colors <- grDevices::col2rgb(colors, alpha = TRUE) / 255

  # Convert to HSV
  hsv_colors <- apply(rgb_colors, 2, function(x) {
    grDevices::rgb2hsv(x[1:3])
  })

  # Adjust saturation channel (S in HSV)
  hsv_colors[2, ] <- hsv_colors[2, ] * saturation
  hsv_colors[2, ] <- pmin(1, pmax(0, hsv_colors[2, ]))  # clamp to [0, 1]

  # Convert back to hex
  adjusted_colors <- apply(hsv_colors, 2, function(hsv) {
    grDevices::hsv(hsv[1], hsv[2], hsv[3])
  })

  # Preserve alpha if present
  if (nrow(rgb_colors) == 4) {
    alpha_vals <- rgb_colors[4, ]
    adjusted_colors <- grDevices::rgb(
      grDevices::col2rgb(adjusted_colors) / 255,
      alpha = alpha_vals
    )
  }

  adjusted_colors
}
