library(generator)
context("r_phone_numbers()")

test_that("Produces the correct output.", {
  expect_equal(length(r_phone_numbers(100)), 100)
})

test_that("Produces the correct output type.", {
  expect_is(r_phone_numbers(100), "character")
})

test_that("Produces the correct errors.", {
})

