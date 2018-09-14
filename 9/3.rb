# def solution(a)
#   # write your code in Ruby 2.2
#   a.each_with_index.inject(0) do |max, (x,i)|
#     current_max = 0
#     min = Float::INFINITY
#     rest  = a[(i+1)...-1]
#     break max if rest.empty?
#     rest.inject(0) do |acc, z|
#       min = z if z < min
#       acc += z
#       current_max = acc - min if current_max < acc - min
#       acc
#     end
#     max = [current_max, max].max
#   end
# end


# return only 76%, with no explanation, why.
# just could not find the place, where it was working wrong.

def solution(a)
  # write your code in Ruby 2.2
  return 0 if a.length == 3
  range = a[1...-1]
  min = Float::INFINITY
  max_ending = 0
  range.inject(0) do |max, y|
    if max_ending + y > 0
      max_ending += y
      if min == Float::INFINITY
        max = [max, max_ending].max
        min = y
      else
        min = y if y < min
        max = [max, max_ending - min].max
      end
    else
      max_ending = 0
      min = Float::INFINITY
    end
    max
  end
end
