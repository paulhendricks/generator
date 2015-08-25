#' Generate random fake longitude values.
#'
#' @param n number of observations.
#' @return A character vector of \code{n} randomly generated longitude values.
#' @export
r_longitudes <- function(n) {
  stats::runif(n, -180, 180)
}
