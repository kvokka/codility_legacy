def solution(a)
  # write your code in Ruby 2.2
  as = a.sort
  top = as[-3, 3]
  bottom = as[0, 2].inject(1, &:*)
  if top[2] > 0
    if bottom > top[0] * top[1]
      bottom * top[2]
    else
      top.inject(1, &:*)
    end
  else
    top.inject(1, &:*)
  end
end
