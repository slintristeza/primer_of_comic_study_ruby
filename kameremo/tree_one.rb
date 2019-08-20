# frozen_string_literal: true

def draw_tree(length)
  forward(length * 0.5)
  turn_left 35
  forward(length * 0.8)
  backward(length * 0.8)
  turn_right 60
  forward(length * 0.6)
  backward(length * 0.6)
  turn_left 25
  backward(length * 0.5)
end

move_to 0, 140
pen_down

forward 250
