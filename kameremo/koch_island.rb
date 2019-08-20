# frozen_string_literal: true

def draw_koch
  forward 70
  turn_left 60
  forward 70
  turn_right 120
  forward 70
  turn_left 60
  forward 70
end

turn_right 90
move_to(-120, -70)
pen_down

3.times do
  draw_koch
  turn_right 120
end
