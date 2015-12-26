def solution(a)
    # write your code in Ruby 2.2
    z = Hash.new()
    a.each do |a| 
       if z.has_key? a
           z[a]+=1
       else
           z[a]=1
       end
    end 
    z.each_pair{|k,v| return k if v % 2 == 1 }
end