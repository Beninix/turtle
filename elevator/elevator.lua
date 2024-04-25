while(true) do
	turtle.up()
	if(turtle.inspectUp()) then
      turtle.forward()
      turtle.turnRight()
      turtle.forward()
      turtle.turnRight()
      turtle.forward()
      turtle.turnRight()
      turtle.forward()
      turtle.turnRight()
      while(true) do
      	turtle.down()
      	if(turtle.inspectDown()) then
          break
        end
      end
		break
	end
end
print("Done.")
