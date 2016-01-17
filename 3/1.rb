def solution(a)
  # write your code in Ruby 2.2
  n = a.length
  result = Float::INFINITY
  r = sum = a.inject(0, &:+)
  l = 0
  (0...n - 1).each do |p|
    l += a[p]
    r -= a[p]
    dif = (l - r).abs
    result = dif if dif < result
    return 0 if result == 0
  end
  result
end
