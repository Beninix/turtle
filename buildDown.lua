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
    turtle.place()
    turtle.down()
end

while(true) do
	action()
	if(turtle.inspectDown()) then
		break
	end
end
print("Done.")
