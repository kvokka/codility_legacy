def solution(a, b, k)
  # write your code in Ruby 2.2
  offset = a % k
  offset == 0 ? ((b - a) / k) + 1 : (offset + b - a) / k
end
