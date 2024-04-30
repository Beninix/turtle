args = {...}
len = args[1]
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
    for i=1,n do
	action()
	if i!=n do
		turtle.forward()
	end
    end
end

--Build Plane
nline(x)
for i=x-1,1,-1 do
    nline(i)
    nline(i)
end
--Build Walls
place()
	for j=1,x-2 do
		for i=1,3 do
			nline(x-1)
			nline(x-1)
			nline(x-1)
		end
		turtle.forward()
		turtle.turnRight()
		turtle.up()
		place()
	end
--Build Plane
nline(x)
for i=x-1,1,-1 do
    nline(i)
    nline(i)
end
print("Done.")
