#' Generate random fake national identification numbers.
#'
#' @param n number of observations.
#' @return A character vector of \code{n} randomly generated national identification numbers.
#' @export
r_national_identification_numbers <- function(n) {
  return(paste0(sample(1:9, size = n, replace = TRUE),
                sample(1:9, size = n, replace = TRUE),
                sample(1:9, size = n, replace = TRUE), "-",
                sample(1:9, size = n, replace = TRUE),
                sample(1:9, size = n, replace = TRUE), "-",
                sample(1:9, size = n, replace = TRUE),
                sample(1:9, size = n, replace = TRUE),
                sample(1:9, size = n, replace = TRUE),
                sample(1:9, size = n, replace = TRUE), sep = ""))
  }
