# Internal helper function — no @export
sample_mean <- function(x) {
  if (!is.numeric(x)) stop("x must be numeric")
  mean(x)
}

# Internal helper function — no @export
sample_sd <- function(x) {
  if (!is.numeric(x)) stop("x must be numeric")
  sd(x)
}

#' Calculate a confidence interval for the sample mean
#'
#' @param x A numeric vector
#' @param conf Confidence level (default = 0.95)
#' @return A named numeric vector of length 2:
#' \itemize{
#'   \item lower_bound
#'   \item upper_bound
#' }
#' @examples
#' calculate_CI(c(1, 2, 3, 4, 5), conf = 0.95)
#' calculate_CI(rnorm(10), conf = 0.9)
#' @export
calculate_CI <- function(x, conf = 0.95) {
  if (!is.numeric(x)) stop("x must be numeric")
  if (conf <= 0 || conf >= 1) stop("conf must be between 0 and 1")

  n <- length(x)
  x_bar <- sample_mean(x)
  s <- sample_sd(x)

  # Standard error
  se <- s / sqrt(n)

  # Critical value from t-distribution
  alpha <- 1 - conf
  crit <- qt(1 - alpha/2, df = n - 1)

  lower <- x_bar - crit * se
  upper <- x_bar + crit * se

  c(lower_bound = lower, upper_bound = upper)
}
