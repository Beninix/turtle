args = {...}
len = args[1]
print("Building a " .. len .. " by " .. len .. " by " .. len  .. " cube.")
slot = turtle.getSelectedSlot() 
function action()
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
    turtle.forward()
end

function buildPlane()
    for m=1,len,1
    do
        for n=1,len,1
        do
            action()
        end
        if(m==tonumber(len))
        then
            break
        end
        if(m%2==1)
        then
            turtle.turnRight()
            turtle.forward()
            turtle.turnRight()
            turtle.forward()
        else
            turtle.turnLeft()
            turtle.forward()
            turtle.turnLeft()   
            turtle.forward()
        end
    end
end
buildPlane()

if(len%2==1)
then
    turtle.turnRight()
    turtle.turnRight()
else
	turtle.back()
    turtle.turnRight()
	turtle.back()
end
turtle.forward()
for l=1,len-2,1
do
turtle.up()
  for m=1,4,1
  do
      for n=1,len-1,1
      do
          action()
      end
      turtle.turnRight()
  end
end
turtle.up()
buildPlane()
print("Done.")
