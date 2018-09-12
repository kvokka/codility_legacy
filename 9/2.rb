def solution(a)
  # write your code in Ruby 2.2
  local_max = max = -Float::INFINITY
  last_max = -1
  a.each_with_index do |p, i|
    current = p
    max = current if current > max
    next if current < 0

    if last_max.to_i < i
      last_max = -1
    else
      local_max -= p
      max = local_max if max < local_max
      next
    end

    a[(i + 1)..last_max].each_with_index do |q, ii|
      current += q
      (local_max = max = current) && (last_max = ii) if current > max
      break if current < 0
    end
  end
  max
end
