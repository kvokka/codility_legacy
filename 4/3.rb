def solution(a)
    # write your code in Ruby 2.2
    b=a.uniq
    c = (1..b.length).to_a - b    
    c.empty? ?  a.length + 1 : c[0] 
end