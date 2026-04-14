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
