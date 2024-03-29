# frozen_string_literal: true

def draw_dragon(n, length, reverse = false)
  if n == 0
    forward(length)
  else
    turn_right(reverse ? -45 : 45)
    draw_dragon(n - 1, length / Math.sqrt(2))
    turn_left(reverse ? -90 : 90)
    draw_dragon(n - 1, length / Math.sqrt(2), true)
    turn_right(reverse ? -45 : 45)
  end
end

move_to(-100, 0)
turn_right 90
pen_down
draw_dragon(3, 100)
