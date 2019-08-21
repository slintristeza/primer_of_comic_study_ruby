# frozen_string_literal: true

def draw_koch(n, length)
  if n == 0
    forward(length)
  else
    draw_koch(n - 1, length / 3)
    turn_left 60
    draw_koch(n - 1, length / 3)
    turn_right 120
    draw_koch(n - 1, length / 3)
    turn_left 60
    draw_koch(n - 1, length / 3)
  end
end

move_to(-120, 80)
turn_right 30
pen_down

3.times do
  draw_koch(5, 270)
  turn_right 120
end
