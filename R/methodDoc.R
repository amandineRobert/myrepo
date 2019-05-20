#' @param a The first argument
foo <- function(a) a + 10

#' @param b The second argument
#' @inheritParams foo

bar <- function(a, b){
  foo(a) * b
}

