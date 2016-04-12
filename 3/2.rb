def solution(a)
  # write your code in Ruby 2.2

  (2 + a.length) * (a.length + 1) / 2 - a.inject(0, &:+)
end
