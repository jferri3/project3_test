#' Approximate cosine using truncated series expansion
#'
#' Computes an approximation of cos(x) using the first k terms
#' of the Taylor series expansion.
#'
#' @param x Numeric value (or vector) to compute cos(x)
#' @param k Number of additional terms; must be a non-negative integer
#' @return Approximation of cos(x)
#' @examples
#' fn_cos(0.5, k = 3)
#' fn_cos(pi/3, k = 5)
#' @export
fn_cos <- function(x, k) {
  # Validate k
  k <- as.integer(k)
  if (k < 0) stop("k must be a non-negative integer")

  # Cosine Taylor series:
  terms <- sapply(0:k, function(n) ((-1)^n) * (x^(2*n)) / factorial(2*n))
  sum(terms)
}


#' Approximate sine using truncated series expansion
#'
#' Computes an approximation of sin(x) using the first k terms
#' of the Taylor series expansion.
#'
#' @param x Numeric value (or vector) to compute sin(x)
#' @param k Number of additional terms; must be a non-negative integer
#' @return Approximation of sin(x)
#' @examples
#' fn_sin(0.5, k = 3)
#' fn_sin(pi/6, k = 5)
#' @export
fn_sin <- function(x, k) {
  # Validate k
  k <- as.integer(k)
  if (k < 0) stop("k must be a non-negative integer")

  # Sine Taylor series:
  terms <- sapply(0:k, function(n) ((-1)^n) * (x^(2*n + 1)) / factorial(2*n + 1))
  sum(terms)
}
