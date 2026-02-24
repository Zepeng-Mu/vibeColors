#' Vibe Color Palettes
#'
#' A list of available color palettes. This is a placeholder structure
#' that will be populated with actual color palettes.
#'
#' @format A named list of color palettes, where each palette is a
#'   character vector of hex color codes.
#'
#' @name vibe_palettes
#' @keywords datasets
NULL

# Initialize empty palette list
# This will be populated with actual palettes later
vibe_palettes <- list(
  CBsafe1 = c(
    "#0E69B7", # Denim
    "#D00E12", # Monza
    "#00B4A6", # Persian Green
    "#F0E441", # Starship
    "#57258C", # Daisy Bush
    "#FE5400", # International Orange
    "#57B4E9", # Picton Blue
    "#FFAF01", # Yellow Sea
    "#AFAFAF", # Silver Chalice
    "#000000" # Black
  ),
  Crimson = c(
    "#ffc3c7", # 50
    "#ffabb0", # 100
    "#ff949a", # 200
    "#ff7d85", # 300
    "#fa666f", # 400
    "#ed5a65", # 500
    "#bb293d", # 600
    "#8a0017" # 700
  ),
  Plum = c(
    "#ffdbff", # 50
    "#ffc0f6", # 100
    "#f2a5da", # 200
    "#d68bbf", # 300
    "#bb71a5", # 400
    "#ad6598", # 500
    "#854072", # 600
    "#5e1c4e" # 700
  ),
  Azure = c(
    "#b3ffff", # 50
    "#93e0ff", # 100
    "#75c0ff", # 200
    "#56a2e6", # 300
    "#3884c6", # 400
    "#2775b6", # 500
    "#005392", # 600
    "#00336e" # 700
  ),
  Turquoise = c(
    "#9dffff", # 50
    "#83f3ff", # 100
    "#6adaf0", # 200
    "#4fc2d7", # 300
    "#31aabf", # 400
    "#1e9eb3", # 500
    "#007589", # 600
    "#004d61" # 700
  ),
  Emerald = c(
    "#b7fff0", # 50
    "#96edd0", # 100
    "#77cdb0", # 200
    "#57ad92", # 300
    "#368f75", # 400
    "#248067", # 500
    "#005f48", # 600
    "#00402b" # 700
  ),
  Sunshine = c(
    "#fff750", # 50
    "#ffef46", # 100
    "#ffe83c", # 200
    "#ffe131", # 300
    "#ffda23", # 400
    "#fed71a", # 500
    "#bf9900", # 600
    "#886d00" # 700
  ),
  Tangerine = c(
    "#ffd282", # 50
    "#ffbf6f", # 100
    "#ffac5b", # 200
    "#ff9a47", # 300
    "#ff8730", # 400
    "#fa7e23", # 500
    "#c44d00", # 600
    "#903e00" # 700
  ),
  AzureCrimson = c(
    "#005392", # 600
    "#2775b6", # 500
    "#3884c6", # 400
    "#56a2e6", # 300
    "#75c0ff", # 200
    "#ffffff",
    "#ff949a", # 200
    "#ff7d85", # 300
    "#fa666f", # 400
    "#ed5a65", # 500
    "#bb293d" # 600
  ),
  AzurePlum = c(
    "#005392", # 600
    "#2775b6", # 500
    "#3884c6", # 400
    "#56a2e6", # 300
    "#75c0ff", # 200
    "#ffffff",
    "#f2a5da", # 200
    "#d68bbf", # 300
    "#bb71a5", # 400
    "#ad6598", # 500
    "#854072" # 600
  ),
  TurquoiseTangerine = c(
    "#007589", # 600
    "#1e9eb3", # 500
    "#31aabf", # 400
    "#4fc2d7", # 300
    "#6adaf0", # 200
    "#ffffff",
    "#ffac5b", # 200
    "#ff9a47", # 300
    "#ff8730", # 400
    "#fa7e23", # 500
    "#c44d00" # 600
  ),
  EmeraldTangerine = c(
    "#005f48", # 600
    "#248067", # 500
    "#368f75", # 400
    "#57ad92", # 300
    "#77cdb0", # 200
    "#ffffff",
    "#ffac5b", # 200
    "#ff9a47", # 300
    "#ff8730", # 400
    "#fa7e23", # 500
    "#c44d00" # 600
  ),
  EmeraldCrimson = c(
    "#005f48", # 600
    "#248067", # 500
    "#368f75", # 400
    "#57ad92", # 300
    "#77cdb0", # 200
    "#ffffff",
    "#ff949a", # 200
    "#ff7d85", # 300
    "#fa666f", # 400
    "#ed5a65", # 500
    "#bb293d" # 600
  ),
  Avedon = c(
    "#FF7201", # Blaze Orange
    "#FF8827", # Crusta
    "#FF9B4C", # Yellow Orange
    "#FEB274", # Macaroni and Cheese
    "#F0CBA9", # Mandys Pink
    "#E2E1DD", # Westar
    "#C2CEAA", # Coriander
    "#A1BA77", # Olivine
    "#8AAC55", # Chelsea Cucumber
    "#7EA13F", # Sushi
    "#658C16" # Vida Loca
  )
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
    pal <- grDevices::colorRampPalette(pal)(n)
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

#' View Vibe Color Palettes
#'
#' Generate a visualization of all available color palettes (or selected ones)
#' with colored tiles showing the hex codes.
#'
#' @param palette Optional character vector of palette names to display.
#'   If `NULL` (default), all available palettes are shown.
#'
#' @return A ggplot2 plot object displaying the color palettes.
#'
#' @export
#' @examples
#' # View all palettes
#' \dontrun{
#' view_vibe_palettes()
#' }
#'
#' # View specific palettes
#' \dontrun{
#' view_vibe_palettes(c("Crimson", "Azure"))
#' }
view_vibe_palettes <- function(palette = NULL) {
  # Validate input
  if (!is.null(palette)) {
    palette <- as.character(palette)
    invalid <- setdiff(palette, names(vibe_palettes))
    if (length(invalid) > 0) {
      stop(
        "Unknown palette(s): ", paste(invalid, collapse = ", "),
        ". Available palettes: ", paste(names(vibe_palettes), collapse = ", "),
        call. = FALSE
      )
    }
    palettes_to_show <- palette
  } else {
    palettes_to_show <- names(vibe_palettes)
  }

  # Build data frame for plotting
  df_list <- lapply(palettes_to_show, function(pal_name) {
    colors <- vibe_palettes[[pal_name]]
    data.frame(
      palette = pal_name,
      color_index = seq_along(colors),
      hex = colors,
      stringsAsFactors = FALSE
    )
  })
  df <- do.call(rbind, df_list)
  df$palette <- factor(df$palette, levels = palettes_to_show)

  # Create the plot
  p <- ggplot2::ggplot(df, ggplot2::aes(x = color_index, y = palette)) +
    ggplot2::geom_tile(
      ggplot2::aes(fill = hex),
      color = "white",
      linewidth = 0.5
    ) +
    ggplot2::geom_text(
      ggplot2::aes(label = hex),
      color = "black",
      size = 3,
      fontface = "plain"
    ) +
    ggplot2::scale_fill_identity() +
    ggplot2::scale_x_continuous(
      breaks = NULL,
      expand = c(0, 0)
    ) +
    ggplot2::scale_y_discrete(
      expand = c(0, 0)
    ) +
    ggplot2::labs(
      x = NULL,
      y = NULL,
      title = "Vibe Color Palettes",
      subtitle = paste0("Showing ", length(palettes_to_show), " palette(s)")
    ) +
    ggplot2::theme_minimal(base_size = 11) +
    ggplot2::theme(
      panel.grid = ggplot2::element_blank(),
      axis.text.y = ggplot2::element_text(face = "bold"),
      axis.ticks = ggplot2::element_blank(),
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5),
      plot.subtitle = ggplot2::element_text(hjust = 0.5, margin = ggplot2::margin(b = 15)),
      plot.margin = ggplot2::margin(15, 15, 15, 15)
    )

  p
}
