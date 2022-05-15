#' Plot boids
#'
#' @param x
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
plot.Boids <- function(x, ...) {
  plot.default(x = x$pos_x,
               y = x$pos_y,
               xlim = c(-1, 1),
               ylim = c(-1, 1),
               xlab = "",
               ylab = "",
               ...)
  arrows(x$pos_x,
         x$pos_y,
         x$pos_x + x$vel_x,
         x$pos_y + x$vel_y)
}
