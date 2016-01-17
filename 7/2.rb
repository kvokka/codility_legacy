def solution(h)
  # write your code in Ruby 2.2
  res = 0
  stack = []
  h.each do |i|
    while !stack.empty? && stack[-1] >= i
      res += 1 if stack[-1] != i
      stack.pop
    end
    stack.push i
  end
  res + stack.length
end
