library(testthat)

source("~/anRpackage/myrepo/tests/test-myrepo.R")

test_result <- test_dir("~/anRpackage/myrepo/tests", reporter="summary")

