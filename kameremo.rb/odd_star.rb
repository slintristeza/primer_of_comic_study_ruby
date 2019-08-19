n = 21
ex_angle = 180 - 180/n

pen_down
n.times do
  forward(Math::PI * 300 / n)
  turn_left (ex_angle)
end