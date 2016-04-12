def solution(a)
  # write your code in Ruby 2.2
  current_profit = 0
  p = a[0]
  a.each do |q|
    p = [q, p].min
    current_profit = [q - p, current_profit].max
  end
  current_profit
end
