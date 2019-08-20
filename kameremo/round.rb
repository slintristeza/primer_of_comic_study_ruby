# frozen_string_literal: true

n = 40

move_to(Math::PI * 100 / n, -100)
turn_left 90

pen_down
n.times do
  forward(Math::PI * 200 / n)
  turn_left (360 / n)
end
