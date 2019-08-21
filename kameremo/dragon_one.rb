def draw_dragon(n, length)
  if n == 0
    forward(length)
  else
    turn_right 45
    draw_dragon(n - 1, length / Math.sqrt(2))
    turn_left 90
    draw_dragon(n - 1, length / Math.sqrt(2))
    turn_right 45
  end
end

move_to(-100, 0)
turn_right 90
pen_down
draw_dragon(1, 100)