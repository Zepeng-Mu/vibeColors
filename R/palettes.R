#' Vibe Color Palettes
#'
#' A list of available color palettes. This is a placeholder structure
#' that will be populated with actual color palettes.
#'
#' @format A named list of color palettes, where each palette is a
#'   character vector of hex color codes.
#'
#' @keywords internal
"vibe_palettes"

# Initialize empty palette list
# This will be populated with actual palettes later
vibe_palettes <- list(
  # Placeholder - no palettes defined yet
  # Example structure:
  # palette_name = c("#color1", "#color2", "#color3")
)

#' Get a Vibe Color Palette
#'
#' Retrieve a color palette by name. Returns the hex color codes
#' for the specified palette.
#'
#' @param name The name of the palette to retrieve. Use `names(vibe_palettes)`
#'   to see available options.
#' @param n The number of colors to return. If `n` is greater than the number
#'   of colors in the palette, colors will be interpolated.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#'
#' @return A character vector of hex color codes.
#'
#' @export
#' @examples
#' # Get a palette (when palettes are defined)
#' # vibe_palette("palette_name")
#' # vibe_palette("palette_name", n = 10)
vibe_palette <- function(name, n = NULL, reverse = FALSE) {
  # Check if palette exists
  if (!name %in% names(vibe_palettes)) {
    stop(
      "Palette '", name, "' not found. ",
      "Available palettes: ",
      paste(names(vibe_palettes), collapse = ", "),
      call. = FALSE
    )
  }

  # Get the palette
  pal <- vibe_palettes[[name]]

  # Reverse if requested
  if (reverse) {
    pal <- rev(pal)
  }

  # Interpolate if n is specified and different from palette length
  if (!is.null(n) && n != length(pal)) {
    pal <- scales::colorRampPalette(pal)(n)
  }

  pal
}

#' List Available Palettes
#'
#' Returns the names of all available color palettes in the package.
#'
#' @return A character vector of palette names.
#'
#' @export
#' @examples
#' # List all available palettes
#' list_vibe_palettes()
list_vibe_palettes <- function() {
  names(vibe_palettes)
}
