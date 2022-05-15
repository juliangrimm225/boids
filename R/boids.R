#' Constructor Boid
#'
#' @param pos_x
#' @param pos_y
#' @param vel_x
#' @param vel_y
#'
#' @return
#' @export
#'
#' @examples
new_Boids <- function(pos_x = double(),
                      pos_y = double(),
                      vel_x = double(),
                      vel_y = double()) {
  b <- data.frame(pos_x, pos_y, vel_x, vel_y)
  structure(b, class = c("Boids"))
}

#' Helper to create random Boids
#'
#' @param n
#'
#' @return
#' @export
#'
#' @examples
#'
ran_Boids <- function(n) {

  b <- 0.8

  trunc <- function(x) {
    s <- sign(x)
    x <- ifelse(s * x < s * b, x, s * b)
    x
  }

  trunc_rnorm <- function() {
    trunc(rnorm(n))
  }

  new_Boids(pos_x = trunc_rnorm(),
            pos_y = trunc_rnorm(),
            vel_x = trunc_rnorm(),
            vel_y = trunc_rnorm())
}
