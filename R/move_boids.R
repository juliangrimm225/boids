move_boids <- function(b) {
  b$pos_x <- b$pos_x + b$vel_x * 0.05
  b$pos_y <- b$pos_y + b$vel_y * 0.05
  b
}
