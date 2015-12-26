def solution(x, a)
    # write your code in Ruby 2.2
    track = {}
    a.each_with_index do |v,k|
        track[v]=k
        return k if track.length == x
    end
    -1
end