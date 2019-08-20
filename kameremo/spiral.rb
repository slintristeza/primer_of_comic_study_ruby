# frozen_string_literal: true

n = 100

turn_right 90
pen_down
(3..n).each do |i|
  forward(Math::PI * 300 / n)
  turn_left(360 / i)
end
