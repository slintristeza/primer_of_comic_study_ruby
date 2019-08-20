# frozen_string_literal: true
SEGMENT_LENGTH = 30

def draw_koch
  forward SEGMENT_LENGTH
  turn_left 60
  forward SEGMENT_LENGTH
  turn_right 120
  forward SEGMENT_LENGTH
  turn_left 60
  forward SEGMENT_LENGTH
end

def draw_koch2
  draw_koch
  turn_left 60
  draw_koch
  turn_right 120
  draw_koch
  turn_left 60
  draw_koch
end

turn_right 90
move_to(-120, -70)
pen_down

3.times do
  draw_koch2
  turn_right 120
end
