args = {...}
len = tonumber(args[1])
print("Building a " .. len .. " by " .. len .. " by " .. len  .. " cube.")
slot = turtle.getSelectedSlot() 
function place()
    while(turtle.getItemCount(slot)<1) do
      if(slot<16)
      then
        slot = slot + 1
      else
        slot = 1
      end
    turtle.select(slot)
    end
    turtle.placeDown()
end
 
function nline(n)
    for i=1,n or 1,1 do
    place()
    if i~=n then
        turtle.forward()
    else
        turtle.turnRight()
        turtle.forward()
    end
    end
end

function buildPlane()
	nline(len)
	for i=len-1,1,-1 do
	    nline(i)
	    nline(i)
	end
	if len%2==0 then
	    for i=1,math.floor((len-1)/2) or 1,1 do
	        turtle.forward()
	    end
	    turtle.turnLeft()
	    for i=1,math.floor((len-1)/2) or 1,1 do
	        turtle.forward()
	    end 
	    turtle.turnRight()
	    turtle.turnRight()
	    turtle.up()
	else
	    turtle.turnRight()
	    for i=1,math.floor(len/2) or 1,1 do
	        turtle.forward()
	    end
	    turtle.turnRight()
	    for i=1,(len+1)/2 or 1,1 do
	        turtle.forward()
	    end
	    turtle.up()
	    turtle.turnRight()
	end
end

--Build floor
buildPlane()
--Build Walls
for j=1,len-2 do
	print(j)
	nline(len)
	for i=1,3 do
	    nline(len-1)
	end
	turtle.back()
	turtle.up()
end
--Build roof
buildPlane()
print("Done.")
