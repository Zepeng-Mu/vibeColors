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
    "1" = "#0E69B7", # Denim
    "2" = "#D00E12", # Monza
    "3" = "#00B4A6", # Persian Green
    "4" = "#F0E441", # Starship
    "5" = "#57258C", # Daisy Bush
    "6" = "#FE5400", # International Orange
    "7" = "#57B4E9", # Picton Blue
    "8" = "#FFAF01", # Yellow Sea
    "9" = "#CB79A7", # Raspberry Rose
    "10" = "#AFAFAF", # Silver Chalice
    "11" = "#000000" # Black
  ),
  Crimson = c(
    "50" = "#ffc3c7",
    "100" = "#ffabb0",
    "200" = "#ff949a",
    "300" = "#ff7d85",
    "400" = "#fa666f",
    "500" = "#ed5a65",
    "600" = "#bb293d",
    "700" = "#8a0017"
  ),
  Plum = c(
    "50" = "#ffdbff",
    "100" = "#ffc0f6",
    "200" = "#f2a5da",
    "300" = "#d68bbf",
    "400" = "#bb71a5",
    "500" = "#ad6598",
    "600" = "#854072",
    "700" = "#5e1c4e"
  ),
  Azure = c(
    "50" = "#b3ffff",
    "100" = "#93e0ff",
    "200" = "#75c0ff",
    "300" = "#56a2e6",
    "400" = "#3884c6",
    "500" = "#2775b6",
    "600" = "#005392",
    "700" = "#00336e"
  ),
  Turquoise = c(
    "50" = "#9dffff",
    "100" = "#83f3ff",
    "200" = "#6adaf0",
    "300" = "#4fc2d7",
    "400" = "#31aabf",
    "500" = "#1e9eb3",
    "600" = "#007589",
    "700" = "#004d61"
  ),
  Emerald = c(
    "50" = "#b7fff0",
    "100" = "#96edd0",
    "200" = "#77cdb0",
    "300" = "#57ad92",
    "400" = "#368f75",
    "500" = "#248067",
    "600" = "#005f48",
    "700" = "#00402b"
  ),
  Sunshine = c(
    "50" = "#fff750",
    "100" = "#ffef46",
    "200" = "#ffe83c",
    "300" = "#ffe131",
    "400" = "#ffda23",
    "500" = "#fed71a",
    "600" = "#bf9900",
    "700" = "#886d00"
  ),
  Tangerine = c(
    "50" = "#ffd282",
    "100" = "#ffbf6f",
    "200" = "#ffac5b",
    "300" = "#ff9a47",
    "400" = "#ff8730",
    "500" = "#fa7e23",
    "600" = "#c44d00",
    "700" = "#903e00"
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
    "1" = "#FF7201", # Blaze Orange
    "2" = "#FF8827", # Crusta
    "3" = "#FF9B4C", # Yellow Orange
    "4" = "#FEB274", # Macaroni and Cheese
    "5" = "#F0CBA9", # Mandys Pink
    "6" = "#E2E1DD", # Westar
    "7" = "#C2CEAA", # Coriander
    "8" = "#A1BA77", # Olivine
    "9" = "#8AAC55", # Chelsea Cucumber
    "10" = "#7EA13F", # Sushi
    "11" = "#658C16" # Vida Loca
  ),
  Benedict = c(
    "1" = "#0A2F90", # Torea Bay
    "2" = "#315FD1", # Mariner
    "3" = "#5A97EA", # Cornflower Blue
    "4" = "#98C4F2", # Jordy Blue
    "5" = "#C1DDFC", # French Pass
    "6" = "#E9F4FF", # Solitude
    "7" = "#FFFFFF", # Black Haze
    "8" = "#FFE0E9", # Pale Rose
    "9" = "#FFB1C9", # Carnation Pink
    "10" = "#FF81AC", # Tickle Me Pink
    "11" = "#EB427B", # French Rose
    "12" = "#CA2360", # Maroon Flush
    "13" = "#A70038" # Burgundy
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

#' Get a Specific Vibe Color
#'
#' Retrieve a specific color by its palette and name/weight.
#' For example, `vibe_color("Azure100")` returns the color from the
#' Azure palette with weight 100.
#'
#' Diverging palettes (like AzureCrimson) are combinations of gradient
#' palettes and do not have specific named weights. If you try to extract
#' a color from a diverging palette, this function will throw an error
#' suggesting to use the relevant gradient palettes instead.
#'
#' @param color_names A character vector of color names (e.g., "Azure100", "Avedon1").
#'
#' @return A character vector of hex color codes.
#'
#' @export
#' @examples
#' # Get specific colors
#' # vibe_color("Azure100")
#' # vibe_color(c("Azure500", "Avedon1"))
vibe_color <- function(color_names) {
  diverging_palettes <- c(
    "AzureCrimson", "AzurePlum", "TurquoiseTangerine",
    "EmeraldTangerine", "EmeraldCrimson"
  )
  
  sapply(color_names, function(color_name) {
    # Check if user is asking for a diverging palette
    for (div_pal in diverging_palettes) {
      if (startsWith(color_name, div_pal)) {
        stop(
          "Cannot extract specific weights from diverging palette '", div_pal, "'. ",
          "Diverging palettes are combinations of gradient palettes. ",
          "Please use the relevant base gradient palettes instead.",
          call. = FALSE
        )
      }
    }
    
    # Try to find the palette by looking for the longest matching palette name
    # at the start of the string
    pal_names <- names(vibe_palettes)
    pal_names <- pal_names[order(nchar(pal_names), decreasing = TRUE)]
    
    matched_pal <- NULL
    for (pal in pal_names) {
      if (startsWith(color_name, pal)) {
        matched_pal <- pal
        break
      }
    }
    
    if (is.null(matched_pal)) {
      stop("Could not identify palette in color name: '", color_name, "'", call. = FALSE)
    }
    
    # Extract the weight part
    weight <- substr(color_name, nchar(matched_pal) + 1, nchar(color_name))
    
    if (weight == "") {
      stop("No weight/index specified for palette '", matched_pal, "'. Did you mean '", matched_pal, "1' or '", matched_pal, "100'?", call. = FALSE)
    }
    
    pal_colors <- vibe_palettes[[matched_pal]]
    
    if (!weight %in% names(pal_colors)) {
      stop(
        "Weight/index '", weight, "' not found in palette '", matched_pal, "'. ",
        "Available weights: ", paste(names(pal_colors), collapse = ", "),
        call. = FALSE
      )
    }
    
    unname(pal_colors[weight])
  }, USE.NAMES = FALSE)
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
