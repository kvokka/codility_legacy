def solution(n, a)
    # write your code in Ruby 2.2
    counter = []
    r = {}
    offset = max = 0
    a.each do |el|
        if el == n + 1 
            offset+= max
            max = 0
            r.clear
        else
           r[el-1] ? r[el-1]+=1 : r[el-1] = 1
           max = r[el-1] if max < r[el-1]
        end
    end
    n.times{ |i| counter.push offset+ (r[i] ? r[i] : 0 ) }
    counter
end