def solution(a)
  # write your code in Ruby 2.2
  e = w = res = 0
  a.each { |i| i == 0 ? e += 1 : w += 1 }
  a.each do |i|
    if i == 0
      res += w
      e -= 1
    else
      w -= 1
    end
    return -1 if res > 1_000_000_000
    return res if e <= 0 || w <= 0
  end
end
