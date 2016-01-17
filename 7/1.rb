def solution(s)
    nest = 0
    s.split('').each{|i| i=='(' ? nest+=1 : nest-=1;return 0 if nest < 0 } 
    nest == 0 ? 1 : 0
end
