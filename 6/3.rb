# There is an error.
# [5,3,3] is not a triangle, case of 0<=p<q<r<n. STRICT!!!

def solution(a)
    s = a.select{|z| z>=0}.sort
    return 0 if s.length < 3
    (s.length-1).downto(0) do |r|
        return 0 if r<=0
        (r-1).downto(0) do |q|
            break if q<=0
            (q-1).downto(0) do |p|
                #p "#{p}  #{q}  #{r}" 
                #p "#{s[p]}  #{s[q]}  #{s[r]}" 
                break if (s[p] + s[q] <= s[r]) || (s[q] + s[r] <= s[p]) || (s[r] + s[p] <= s[q]) || p<0
                return 1 if (s[p] + s[q] > s[r]) && (s[q] + s[r] > s[p]) && (s[r] + s[p] > s[q])
            end
        end
    end
    0
end