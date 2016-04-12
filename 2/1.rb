def solution(a)
  # write your code in Ruby 2.2
  z = {}
  a.each do |a|
    if z.key? a
      z[a] += 1
    else
      z[a] = 1
    end
  end
  z.each_pair { |k, v| return k if v.odd? }
end
