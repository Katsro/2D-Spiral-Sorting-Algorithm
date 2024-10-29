function inScrew(x, y)
  return
  (x>=y and x+y>0) and (4*x*x-3*x+y)
  or (x>y and x+y<=0) and (4*y*y-3*y+x)
  or (x<y and x+y>=0) and (4*y*y-y-x)
  or (x<=y and x+y<0) and (4*x*x-y-x)
  or 0
end

function outScrew(i)
 local ans=tointeger((math.sqrt(i)+1)/2)
    local num=(ans*2+1)^2-1-i
    local c,x,y=num/ans
    x=(c==0) and (ans) or (c<=2) and (ans-num) or (c<=4) and (-ans) or (c<=6) and (num-4*ans-ans) or (ans)
    y=(c==0) and (-ans) or (c<=2) and (-ans) or (c<=4) and (-ans+num-2*ans) or (c<=6) and ans or (ans-(num-6*ans))
    return x,y
  end
