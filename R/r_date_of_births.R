#' Generate random fake date of birth values.
#'
#' @param n number of observations.
#' @param start starting date.
#' @param end ending date.
#' @return A character vector of \code{n} randomly generated date of birth values.
#' @export
r_date_of_births <- function(n, start = as.Date("1900-01-01"), end = Sys.Date()) {
  as.Date(sample.int(end - start, size = n), origin = start)
}
