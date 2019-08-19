# frozen_string_literal: true

n = 100

turn_right 90
pen_down
(3..n).each do |i|
  turn_left (360 / i)
  4.times do
    forward(Math::PI * i)
    turn_left(90)
  end
end
