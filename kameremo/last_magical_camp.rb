# frozen_string_literal: true

def draw_round(n)
  n.times do
    forward(Math::PI * n / n)
    turn_left (360 / n)
  end
end

def draw_koch(n, length)
  if n == 0
    forward(length)
  else
    draw_koch(n - 1, length / 3)
    turn_left 60
    draw_koch(n - 1, length / 3)
    turn_right 120
    draw_koch(n - 1, length / 3)
    turn_left 60
    draw_koch(n - 1, length / 3)
  end
end

def draw_dragon(n, length, reverse = false)
  if n == 0
    forward(length)
  else
    turn_right(reverse ? -45 : 45)
    draw_dragon(n - 1, length / Math.sqrt(2))
    turn_left(reverse ? -90 : 90)
    draw_dragon(n - 1, length / Math.sqrt(2), true)
    turn_right(reverse ? -45 : 45)
  end
end

move_to(0, 180)
turn_right 90
pen_down
color "red"
draw_round(350)