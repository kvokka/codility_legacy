# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  a = n.to_s(2)
  arr = []
  if a[-1] == '1'
    arr = a.split('1')
  else
    arr = a.split('1')
    arr.pop
  end
  if arr.max.nil?
    0
  else
    arr.max.length
 end
end

p solution 5
