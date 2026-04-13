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
  Default = c(
    "1" = "#F25555", # Carnation
    "2" = "#FF9332", # Neon Carrot
    "3" = "#DAD014", # Yellow
    "4" = "#8AC000", # Pistachio
    "5" = "#39B3E4", # Picton Blue
    "6" = "#9C70CB" # Amethyst
  ),
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
    "50" = "#FFC3C7",
    "100" = "#FFABB0",
    "200" = "#FF949A",
    "300" = "#FF7D85",
    "400" = "#FA666F",
    "500" = "#ED5A65",
    "600" = "#BB293D",
    "700" = "#8A0017"
  ),
  Plum = c(
    "50" = "#FFDBFF",
    "100" = "#FFC0F6",
    "200" = "#F2A5DA",
    "300" = "#D68BBF",
    "400" = "#BB71A5",
    "500" = "#AD6598",
    "600" = "#854072",
    "700" = "#5E1C4E"
  ),
  Azure = c(
    "50" = "#B3FFFF",
    "100" = "#93E0FF",
    "200" = "#75C0FF",
    "300" = "#56A2E6",
    "400" = "#3884C6",
    "500" = "#2775B6",
    "600" = "#005392",
    "700" = "#00336E"
  ),
  Turquoise = c(
    "50" = "#9DFFFF",
    "100" = "#83F3FF",
    "200" = "#6ADAF0",
    "300" = "#4FC2D7",
    "400" = "#31AABF",
    "500" = "#1E9EB3",
    "600" = "#007589",
    "700" = "#004D61"
  ),
  Emerald = c(
    "50" = "#B7FFF0",
    "100" = "#96EDD0",
    "200" = "#77CDB0",
    "300" = "#57AD92",
    "400" = "#368F75",
    "500" = "#248067",
    "600" = "#005F48",
    "700" = "#00402B"
  ),
  Sunshine = c(
    "50" = "#FFF750",
    "100" = "#FFEF46",
    "200" = "#FFE83C",
    "300" = "#FFE131",
    "400" = "#FFDA23",
    "500" = "#FED71A",
    "600" = "#BF9900",
    "700" = "#886D00"
  ),
  Tangerine = c(
    "50" = "#FFD282",
    "100" = "#FFBF6F",
    "200" = "#FFAC5B",
    "300" = "#FF9A47",
    "400" = "#FF8730",
    "500" = "#FA7E23",
    "600" = "#C44D00",
    "700" = "#903E00"
  ),
  AzureCrimson = c(
    "#005392", # 600
    "#2775B6", # 500
    "#3884C6", # 400
    "#56A2E6", # 300
    "#75C0FF", # 200
    "#FFFFFF",
    "#FF949A", # 200
    "#FF7D85", # 300
    "#FA666F", # 400
    "#ED5A65", # 500
    "#BB293D" # 600
  ),
  AzurePlum = c(
    "#005392", # 600
    "#2775B6", # 500
    "#3884C6", # 400
    "#56A2E6", # 300
    "#75C0FF", # 200
    "#FFFFFF",
    "#F2A5DA", # 200
    "#D68BBF", # 300
    "#BB71A5", # 400
    "#AD6598", # 500
    "#854072" # 600
  ),
  TurquoiseTangerine = c(
    "#007589", # 600
    "#1E9EB3", # 500
    "#31AABF", # 400
    "#4FC2D7", # 300
    "#6ADAF0", # 200
    "#FFFFFF",
    "#FFAC5B", # 200
    "#FF9A47", # 300
    "#FF8730", # 400
    "#FA7E23", # 500
    "#C44D00" # 600
  ),
  EmeraldTangerine = c(
    "#005F48", # 600
    "#248067", # 500
    "#368F75", # 400
    "#57AD92", # 300
    "#77CDB0", # 200
    "#FFFFFF",
    "#FFAC5B", # 200
    "#FF9A47", # 300
    "#FF8730", # 400
    "#FA7E23", # 500
    "#C44D00" # 600
  ),
  EmeraldCrimson = c(
    "#005F48", # 600
    "#248067", # 500
    "#368F75", # 400
    "#57AD92", # 300
    "#77CDB0", # 200
    "#FFFFFF",
    "#FF949A", # 200
    "#FF7D85", # 300
    "#FA666F", # 400
    "#ED5A65", # 500
    "#BB293D" # 600
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
  ),
  # Flexoki palettes
  FlexokiBase = c(
    "50" = "#F2F0E5",
    "100" = "#E6E4D9",
    "150" = "#DAD8CE",
    "200" = "#CECDC3",
    "300" = "#B7B5AC",
    "400" = "#9F9D96",
    "500" = "#878580",
    "600" = "#6F6E69",
    "700" = "#575653",
    "800" = "#403E3C"
  ),
  FlexokiRed = c(
    "50" = "#FFE1D5",
    "100" = "#FFCABB",
    "150" = "#FDB2A2",
    "200" = "#F89A8A",
    "300" = "#E8705F",
    "400" = "#D14D41",
    "500" = "#C03E35",
    "600" = "#AF3029",
    "700" = "#942822",
    "800" = "#6C201C"
  ),
  FlexokiOrange = c(
    "50" = "#FFE7CE",
    "100" = "#FED3AF",
    "150" = "#FCC192",
    "200" = "#F9AE77",
    "300" = "#ECB849",
    "400" = "#DA702C",
    "500" = "#CB6120",
    "600" = "#BC5215",
    "700" = "#9D4310",
    "800" = "#71320D"
  ),
  FlexokiYellow = c(
    "50" = "#FAEEC6",
    "100" = "#F6E2A0",
    "150" = "#F1D67E",
    "200" = "#ECCB60",
    "300" = "#DFB431",
    "400" = "#D0A215",
    "500" = "#BE9207",
    "600" = "#AD8301",
    "700" = "#8E6B01",
    "800" = "#664D01"
  ),
  FlexokiGreen = c(
    "50" = "#EDEECF",
    "100" = "#DDE2B2",
    "150" = "#CDD597",
    "200" = "#BEC97E",
    "300" = "#A0AF54",
    "400" = "#879A39",
    "500" = "#768D21",
    "600" = "#66800B",
    "700" = "#536907",
    "800" = "#3D4C07"
  ),
  FlexokiCyan = c(
    "50" = "#DDF1E4",
    "100" = "#BFE8D9",
    "150" = "#A2DECE",
    "200" = "#87D3C3",
    "300" = "#5ABDAC",
    "400" = "#3AA99F",
    "500" = "#2F968D",
    "600" = "#24837B",
    "700" = "#1C6C66",
    "800" = "#164F4A"
  ),
  FlexokiBlue = c(
    "50" = "#E1ECEB",
    "100" = "#C6DDE8",
    "150" = "#ABCFE2",
    "200" = "#92BFDB",
    "300" = "#66A0C8",
    "400" = "#4385BE",
    "500" = "#3171B2",
    "600" = "#205EA6",
    "700" = "#1A4F8C",
    "800" = "#163B66"
  ),
  FlexokiPurple = c(
    "50" = "#F0EAEC",
    "100" = "#E2D9E9",
    "150" = "#D3CAE6",
    "200" = "#C4B9E0",
    "300" = "#A699D0",
    "400" = "#8B7EC8",
    "500" = "#735EB5",
    "600" = "#5E409D",
    "700" = "#4F3685",
    "800" = "#3C2A62"
  ),
  FlexokiMagenta = c(
    "50" = "#FEE4E5",
    "100" = "#FCCFDA",
    "150" = "#F9B9CF",
    "200" = "#F4A4C2",
    "300" = "#E47DA8",
    "400" = "#CE5D97",
    "500" = "#B74583",
    "600" = "#A02F6F",
    "700" = "#87285E",
    "800" = "#641F46"
  )
)

#' Get a Vibe Color Palette
#'
#' Retrieve a color palette by name. Returns the hex color codes
#' for the specified palette.
#'
#' @param name The name of the palette to retrieve. Use `names(vibe_palettes)`
#'   to see available options. Default is "Default".
#' @param n The number of colors to return. If `n` is less than or equal to the
#'   number of colors in the palette, the first `n` colors are returned.
#'   If `n` is greater, colors will be interpolated across the palette range.
#' @param reverse Logical. Should the palette be reversed? Default is `FALSE`.
#'
#' @return A character vector of hex color codes.
#'
#' @export
#' @examples
#' # Get a palette (when palettes are defined)
#' # vibe_palette()
#' # vibe_palette("Crimson")
#' # vibe_palette("Crimson", n = 10)
vibe_palette <- function(name = "Default", n = NULL, reverse = FALSE) {
  # Check if palette exists
  if (!name %in% names(vibe_palettes)) {
    stop(
      "Palette '",
      name,
      "' not found. ",
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

  # Return first n colors if specified, or interpolate if n > palette length
  if (!is.null(n)) {
    if (n > length(pal)) {
      pal <- grDevices::colorRampPalette(pal)(n)
    } else {
      pal <- head(pal, n)
    }
  }

  # Remove element names to avoid issues with certain functions
  pal <- unname(pal)

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
    "AzureCrimson",
    "AzurePlum",
    "TurquoiseTangerine",
    "EmeraldTangerine",
    "EmeraldCrimson"
  )

  sapply(
    color_names,
    function(color_name) {
      # Check if user is asking for a diverging palette
      for (div_pal in diverging_palettes) {
        if (startsWith(color_name, div_pal)) {
          stop(
            "Cannot extract specific weights from diverging palette '",
            div_pal,
            "'. ",
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
        stop(
          "Could not identify palette in color name: '",
          color_name,
          "'",
          call. = FALSE
        )
      }

      # Extract the weight part
      weight <- substr(color_name, nchar(matched_pal) + 1, nchar(color_name))

      if (weight == "") {
        stop(
          "No weight/index specified for palette '",
          matched_pal,
          "'. Did you mean '",
          matched_pal,
          "1' or '",
          matched_pal,
          "100'?",
          call. = FALSE
        )
      }

      pal_colors <- vibe_palettes[[matched_pal]]

      if (!weight %in% names(pal_colors)) {
        stop(
          "Weight/index '",
          weight,
          "' not found in palette '",
          matched_pal,
          "'. ",
          "Available weights: ",
          paste(names(pal_colors), collapse = ", "),
          call. = FALSE
        )
      }

      unname(pal_colors[weight])
    },
    USE.NAMES = FALSE
  )
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
        "Unknown palette(s): ",
        paste(invalid, collapse = ", "),
        ". Available palettes: ",
        paste(names(vibe_palettes), collapse = ", "),
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
      plot.subtitle = ggplot2::element_text(
        hjust = 0.5,
        margin = ggplot2::margin(b = 15)
      ),
      plot.margin = ggplot2::margin(15, 15, 15, 15)
    )

  p
}
