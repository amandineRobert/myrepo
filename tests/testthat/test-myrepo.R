test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("comparison of numbers works", {
  expect_equal(10, 10)
  expect_equal(10, 10 + 1e-7)
  expect_equal(10, 11)
  expect_identical(10, 10 + 1e-7)
})

