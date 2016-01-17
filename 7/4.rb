def solution(a, b)
  # write your code in Ruby 2.2
  result = 0
  s = []
  a.each_with_index do |f, i|
    if b[i] == 0
      if s.empty?
        result += 1
      else
        s.pop while s.any? && (s[-1] < f)

        result += 1 if s.empty?
      end
    else
      s.push f
    end
  end
  result + s.length
end
