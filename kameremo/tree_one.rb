# frozen_string_literal: true

def draw_tree1(length)
  forward(length * 0.5)
  turn_left 35
  draw_tree0(length * 0.8)
  turn_right 60
  draw_tree0(length * 0.6)
  turn_left 25
  backward(length * 0.5)
end

def draw_tree0(length)
  forward length
  backward length
end

move_to 0, 140
pen_down

draw_tree1 250
