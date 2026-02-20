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