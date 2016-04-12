def solution(s)
  # write your code in Ruby 2.2
  stack = []
  open = %w+ ( { [ +
  close = %w+ ) } ] +
  s.split('').each do |t|
    if open.include? t
      stack.push t
    else
      return 0 unless stack.pop == open[close.index t]
    end
  end
  stack.empty? ? 1 : 0
end
