# Test palette functions
test_that("list_vibe_palettes returns palette names", {
  # Returns a character vector (may be empty if no palettes defined)
  expect_type(list_vibe_palettes(), "character")
})

test_that("vibe_palette errors on non-existent palette", {
  expect_error(
    vibe_palette("nonexistent_palette"),
    "not found"
  )
})

test_that("vibe_palette returns colors when palette exists", {
  # Skip if no palettes defined
  skip_if(length(list_vibe_palettes()) == 0, "No palettes defined")

  pal_name <- list_vibe_palettes()[1]
  pal <- vibe_palette(pal_name)

  expect_type(pal, "character")
  expect_true(all(grepl("^#", pal)))
})

# Test saturation parameter in scale functions
test_that("scale_color_vibe accepts saturation parameter", {
  skip_if(length(list_vibe_palettes()) == 0, "No palettes defined")

  pal_name <- list_vibe_palettes()[1]

  # Should not error with valid saturation values
  expect_no_error(scale_color_vibe(pal_name, saturation = 0.5))
  expect_no_error(scale_color_vibe(pal_name, saturation = 1))
  expect_no_error(scale_color_vibe(pal_name, saturation = 1.5))
  expect_no_error(scale_color_vibe(pal_name, saturation = 0))
  expect_no_error(scale_color_vibe(pal_name, saturation = 2))
})

test_that("scale_fill_vibe accepts saturation parameter", {
  skip_if(length(list_vibe_palettes()) == 0, "No palettes defined")

  pal_name <- list_vibe_palettes()[1]

  expect_no_error(scale_fill_vibe(pal_name, saturation = 0.5))
  expect_no_error(scale_fill_vibe(pal_name, saturation = 1))
  expect_no_error(scale_fill_vibe(pal_name, saturation = 1.5))
})

test_that("scale_color_vibe_c accepts saturation parameter", {
  skip_if(length(list_vibe_palettes()) == 0, "No palettes defined")

  pal_name <- list_vibe_palettes()[1]

  expect_no_error(scale_color_vibe_c(pal_name, saturation = 0.5))
  expect_no_error(scale_color_vibe_c(pal_name, saturation = 1))
  expect_no_error(scale_color_vibe_c(pal_name, saturation = 1.5))
})

test_that("scale_fill_vibe_c accepts saturation parameter", {
  skip_if(length(list_vibe_palettes()) == 0, "No palettes defined")

  pal_name <- list_vibe_palettes()[1]

  expect_no_error(scale_fill_vibe_c(pal_name, saturation = 0.5))
  expect_no_error(scale_fill_vibe_c(pal_name, saturation = 1))
  expect_no_error(scale_fill_vibe_c(pal_name, saturation = 1.5))
})

test_that("saturation adjustment produces valid colors", {
  skip_if(length(list_vibe_palettes()) == 0, "No palettes defined")

  pal_name <- list_vibe_palettes()[1]
  pal <- vibe_palette(pal_name)

  # Test the internal function directly
  adjusted <- .adjust_saturation(pal, 0.5)

  # Should return same number of colors
  expect_length(adjusted, length(pal))

  # Should still be valid hex colors
  expect_type(adjusted, "character")
  expect_true(all(grepl("^#", adjusted)))
})

test_that("saturation = 0 produces grayscale colors", {
  # Test with a known colorful palette
  if ("Crimson" %in% list_vibe_palettes()) {
    pal <- vibe_palette("Crimson")
    adjusted <- .adjust_saturation(pal, 0)

    # Convert to RGB and check that R == G == B (grayscale)
    rgb_vals <- grDevices::col2rgb(adjusted) / 255
    is_grayscale <- apply(rgb_vals, 2, function(x) {
      abs(diff(range(x))) < 0.01  # Allow small floating point differences
    })

    expect_true(all(is_grayscale))
  }
})