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
  local num=(ans*2+1)^2-1
  local c=num-i
  local x,y
  if(c==0) x,y= ans,-ans
   elseif(c<=2*ans)x,y= ans-c,-ans
   elseif(c<=4*ans)x,y= -ans,-ans+c-2*ans
   elseif(c<=6*ans)x,y= c-4*ans-ans,ans
   else x,y= ans,ans-(c-6*ans)end
    return x,y
  end
