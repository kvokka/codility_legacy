def solution(a)
  # write your code in Ruby 2.2
  avr_min = Float::INFINITY
  res = 0
  (0..a.length - 2).each do |i|
    k = 2
    sum = (a[i] + a[i + 1])
    loop do
      if (sum / k.to_f) < avr_min
        avr_min = sum / k.to_f
        res = i
      end
      if i + k <= a.length - 1 && a[i + k] < avr_min
        sum += a[i + k]
        k += 1
      else
        break
      end
    end
    # p "#{avr_min}  #{sum}  #{i} #{k}"
  end
  res
end
