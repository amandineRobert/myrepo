context("number addition")

test_that("Test that addition works", {
  expect_equal(2 + 2, 4)
  expect_equal(4 + 4, 8)
  expect_error(4 + "a", "YOU NEED NUMBER")
})
