#
# def solution(a)
#     # write your code in Ruby 2.2
#     intersect=0
#     a.each do |c|
#         coords_top=(c-a[c]..c+a[c]).to_a
#         p coords_top
#         ((c+1)..(a.length-1)).each do |i|
#             coords_int=(i-a[i]..i+a[i]).to_a
#             unless (coords_int & coords_top).empty?
#                 intersect+=1
#                 return -1 if intersect==10_000_000
#             end
#         end
#     end
#     intersect
# end

# def solution(a)
#     # write your code in Ruby 2.2
#     intersect=0
#     (0...(a.length)).each do |c|
#         ((c+1)...(a.length)).each do |i|
#             # p "#{i-a[i]}..#{i+a[i]}   #{c-a[c]}..#{c+a[c]}"
#             if (i-a[i]>=c-a[c] && i-a[i]<=c+a[c]) || (i+a[i]>=c-a[c] && i+a[i] <= c+a[c]) &&
#
#                (c-a[c]>=i-a[i] && c-a[c]<=i+a[i]) || (c+a[c]>=i-a[i] && c+a[c] <= i+a[i])
#                # -4       -1         -4      1           6       -1        6         1
#               #  p "#{i-a[i]}..#{i+a[i]}   #{c-a[c]}..#{c+a[c]}"
#                 intersect+=1
#                 return -1 if intersect==10_000_000
#             end
#         end
#     end
#     intersect
# end

# def solution(a)
#     # write your code in Ruby 2.2
#     t=a.each_with_index.map{|x,i| [i-x,x+i]}.sort
#     intersect=0
#     (0...(t.length)).each do |c|
#         ((c+1)...(t.length)).each do |i|
#             break unless t[c][1]>=t[i][0]
#             if ((t[i][0]>= t[c][0] && t[i][0]<=t[c][1]) || (t[i][1]>=t[c][0] && t[i][1]<=t[c][1])) ||
#                ((t[c][0]>= t[i][0] && t[c][0]<=t[i][1]) || (t[c][1]>=t[i][0] && t[c][1]<=t[i][1]))
#             #   p "#{t[i][0]}  #{t[i][1]}       #{t[c][0]}  #{t[c][1]}"
#                 intersect+=1
#                 return -1 if intersect==10_000_000
#             end
#         end
#     end
#     intersect
# end

# def solution(a)
#     # write your code in Ruby 2.2
#     t=a.each_with_index.map{|x,i| [i-x,x+i]}.sort
#     intersect=0
#     (0...(t.length)).each do |c|
#         if t[c][1]>=t.length
#             intersect+=(t.length-c-1)
#             next
#         end
#         ((c+1)...(t.length)).each do |i|
#             break unless t[c][1]>=t[i][0]
#             #   p "#{t[i][0]}  #{t[i][1]}       #{t[c][0]}  #{t[c][1]}"
#                 intersect+=1
#                 return -1 if intersect>10_000_000
#         end
#     end
#     intersect
# end


# def solution(a)
#     # write your code in Ruby 2.2
#     t=a.each_with_index.map{|x,i| [i-x,x+i,x]}.sort
#     first_s = t.map{|x| x[0]}
#   #  p t
#    # p first_s
#     intersect=0
#     (0...(t.length)).each do |c|
#         if t[c][1]>=t.length
#             intersect+=(t.length-c-1)
#             next
#         elsif t[c][2]==0
#
#             next
#         else
#             last = first_s.index{|x| x>t[c][1] }
#             if last
#                 intersect+= last - c - 1
#                 #p "#{last}  #{c}"
#                 next
#             end
#         end
#         ((c+1)...(t.length)).each do |i|
#             break unless t[c][1]>=t[i][0]
#             #   p "#{t[i][0]}  #{t[i][1]}       #{t[c][0]}  #{t[c][1]}"
#                 intersect+=1
#                 return -1 if intersect>10_000_000
#         end
#     end
#     intersect
# end


# def solution(a)
#   t=a.each_with_index.map{|x,i| [i-x,x+i,x]}.sort
#   intersect=0
#   (0...(t.length)).each do |c|
#     r = t[c][2]
#     if t[c][1]>=t.length
#       intersect+=(t.length-c-1)
#       next
#     end
#     if c+r+1 < t.length
#       t[c+r][0]<=t[c][1] ? intersect+=r : r=0
#     else
#       r=0
#     end
#     ((c+1+r)...(t.length)).each do |i|
#       break unless t[c][1]>=t[i][0]
#       intersect+=1
#     end
#     return -1 if intersect>10_000_000
#   end
#   intersect
# end

def solution(a)
    # write your code in Ruby 2.2
    t=[]
    a.each_with_index{|v,i| t << [i-v,1]; t<<[v+i,-1] }
    t.sort!{|x,y|  x,y=y,x if x[0]==y[0];   x <=> y }
    sum=d=0
    t.each do |i|
       sum+=d if i[1]>0  
       d+=i[1]
       return -1 if sum > 10_000_000
    end
    sum
end
