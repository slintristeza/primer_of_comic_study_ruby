# frozen_string_literal: true

def draw_tree_random(n, length)
  if n == 0
    forward(length)
    backward(length)
  else
    left_angle = rand(10..25)
    right_angle = rand(30..45)
    forward(length / 3)
    turn_left(left_angle)
    draw_tree_random(n - 1, length * rand(0.6..0.9))
    turn_right(right_angle)
    draw_tree_random(n - 1, length * rand(0.6..0.9))
    turn_left(right_angle -left_angle)
    backward(length / 3)
  end
end

move_to 0, 140
pen_down
draw_tree_random(12, 200)
