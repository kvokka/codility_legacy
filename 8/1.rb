def solution(a)
  # write your code in Ruby 2.2
  return -1 if a.empty?
  c = {}
  a.each { |v| c[v].nil? ? c[v] = 1 : c[v] += 1 }
  r = c.to_a.map { |i| i[0], i[1] = i[1], i[0] }.max
  r[0] > (a.length / 2) ? a.index(r[1]) : -1
end
