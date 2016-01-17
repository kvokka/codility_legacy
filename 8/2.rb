def solution(a)
  # write your code in Ruby 2.2
  c = {}
  a.each { |v| c[v].nil? ? c[v] = 1 : c[v] += 1 }
  leader_arr = c.to_a.map { |v| v[0], v[1] = v[1], v[0] }.max
  leader = leader_arr[1]
  leader_all = leader_arr[0]
  result = leader_counter = 0
  (0...a.length - 1).each do |s|
    leader_counter += 1 if a[s] == leader
    result += 1 if (leader_counter > ((s + 1) / 2).floor) &&
                   (leader_all - leader_counter > ((a.length - 1 - s) / 2).floor)
  end
  result
end
