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
		end
	end
end

function buildPlane()
	for m=1,len do
		nline(len)
		if(m==len)then
		    break
		end
		if(m%2==1)
		then
		    turtle.turnRight()
		    turtle.forward()
		    turtle.turnRight()
		else
		    turtle.turnLeft()
		    turtle.forward()
		    turtle.turnLeft()   
		end
	end
	turtle.up()
	turtle.turnRight()
	if len%2==1 then
		turtle.turnRight()
	end
end

function buildWall()
	for i=1,len-2 do
		for i=1,4 do
			nline(len)
			turtle.turnRight()
		end
		turtle.up()
	end
end

buildPlane()
buildWall()
buildPlane()
print("Done.")
