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
               xaxt = "n",
               yaxt = "n",
               ann = FALSE,
               ...)
  arrows(x$pos_x,
         x$pos_y,
         x$pos_x + 0.05 * x$vel_x,
         x$pos_y + 0.05 * x$vel_y)
}
