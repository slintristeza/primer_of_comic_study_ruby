# frozen_string_literal: true

def draw_tree_n(n, length)
  if n == 0
    forward(length)
    backward(length)
  else
    forward(length * 0.5)
    turn_left 35
    draw_tree_n(n - 1, length * 0.8)
    turn_right 60
    draw_tree_n(n - 1, length * 0.6)
    turn_left 25
    backward(length * 0.5)
  end
end

move_to 0, 140
pen_down

draw_tree_n(12, 150)
