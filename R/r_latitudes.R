#' Generate random fake latitude values.
#'
#' @param n number of observations.
#' @return A character vector of \code{n} randomly generated latitude values.
#' @export
r_latitudes <- function(n) {
  runif(n, -90, 90)
}
