animate_boids <- function(boids, steps = 10) {
  if (!is.null(dev.list())) dev.off()
  plot(boids)

  for (i in 1:steps) {
    animation::ani.options(interval = 0.25)
    boids <- move_boids(boids)
    plot(boids)
    animation::ani.pause()
  }

}
