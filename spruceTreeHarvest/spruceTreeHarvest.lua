turtle.up()
turtle.dig()
turtle.forward()

while(true) do
	turtle.dig()
  	local success, data = turtle.inspectUp()
	if(success and data.name~="minecraft:spruce_log") then
		break
	end
  turtle.digUp()
  turtle.up()
end

turtle.turnRight()
turtle.dig()
turtle.forward()
turtle.turnLeft()

while(true) do
	turtle.dig()
 	local success, data = turtle.inspectDown()
	if(data.name=="minecraft:podzol") then
		break
	end
  turtle.digDown()
  turtle.down()
end

turtle.back()
turtle.turnRight()
turtle.back()
turtle.turnLeft()
turtle.down()

print("Done.")
