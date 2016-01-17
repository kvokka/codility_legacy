# def solution(s, p, q)
#     res=[]
#     (0...(q.length)).each do |i|
#        offset=p[i]
#        len=q[i]-p[i]+1
#        case s[offset,len].split('').min
#         when "A"
#             res.push 1
#         when "C"
#             res.push 2
#         when "G"
#             res.push 3
#         else
#             res.push 4
#         end
#     end
#     res
# end

def solution(s, p, q)
  # write your code in Ruby 2.2
  g = s.length + 1
  a = (s.length + 1)**3
  c = (s.length + 1)**2
  tmp = []
  res = []
  tmp.push 0
  o = 0
  s.split('').each do |i|
    o += if i == 'T'
           1
         elsif i == 'G'
           g
         elsif i == 'C'
           c
         else
           a
end
    tmp.push o
  end
  (0...p.length).each do |k|
    o = tmp[q[k] + 1] - tmp[p[k]]
    if o >= a
      res.push 1
    elsif o >= c
      res.push 2
    elsif o >= g
      res.push 3
    else
      res.push 4
     end
  end
  res
end
