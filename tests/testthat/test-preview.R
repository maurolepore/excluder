# Test mark_preview()

test_that("Output class is same as input class", {
  expect_s3_class(
    mark_preview(qualtrics_numeric, quiet = TRUE),
    class(qualtrics_numeric)
  )
})

test_that("Messages displayed by default", {
  suppressMessages(expect_message(mark_preview(qualtrics_numeric)))
})

test_that("No messages displayed when quiet = TRUE", {
  expect_message(mark_preview(qualtrics_numeric, quiet = TRUE), NA)
})

test_that("Marks create data frames of correct size", {
  suppressMessages(expect_true(nrow(mark_preview(qualtrics_numeric)) == 100))
  suppressMessages(expect_true(ncol(mark_preview(qualtrics_numeric)) == 17))
})

# Test check_preview()

test_that("Output class is same as input class", {
  expect_s3_class(
    check_preview(qualtrics_numeric, quiet = TRUE),
    class(qualtrics_numeric)
  )
})

test_that("Messages displayed by default", {
  suppressMessages(expect_message(check_preview(qualtrics_numeric)))
})

test_that("No messages displayed when quiet = TRUE", {
  expect_message(check_preview(qualtrics_numeric, quiet = TRUE), NA)
})

test_that("Checks create data frames of correct size", {
  suppressMessages(expect_true(nrow(check_preview(qualtrics_numeric)) == 2))
  suppressMessages(expect_true(ncol(check_preview(qualtrics_numeric)) == 16))
})

# Test exclude_preview()

test_that("Output class is same as input class", {
  suppressMessages(expect_s3_class(
    exclude_preview(qualtrics_numeric),
    class(qualtrics_numeric)
  ))
})

test_that("Messages displayed by default", {
  suppressMessages(expect_message(exclude_preview(qualtrics_numeric)))
})

test_that("No messages displayed when quiet = TRUE and silent = TRUE", {
  expect_message(
    exclude_preview(qualtrics_numeric, quiet = TRUE, silent = TRUE), NA
  )
})

test_that("Excludes create data frames of correct size", {
  suppressMessages(expect_true(nrow(exclude_preview(qualtrics_numeric)) == 98))
  suppressMessages(expect_true(ncol(exclude_preview(qualtrics_numeric)) == 16))
})
