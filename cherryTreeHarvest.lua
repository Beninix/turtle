turtle.digUp()
turtle.up()
turtle.dig()
turtle.forward()
turtle.turnRight()
turtle.dig()
turtle.turnLeft()
turtle.turnLeft()
turtle.dig()
function branch()
	local success, data = turtle.inspectUp()
	if(success and data.name=="blue_skies:cherry_log") then
		for i=1,3 do
			turtle.dig()
			turtle.forward()
			turtle.up()
		end
		for i=1,3 do
			turtle.back()
			turtle.down()
		end
	end
end
	

while(true) do
	
  	local success, data = turtle.inspectUp()
	if(success and data.name~="blue_skies:cherry_log") then
		break
	end
	turtle.digUp()
  	turtle.up()
	for i=1,4 do
		branch()
		turtle.turnRight()
	end
end

while(true) do
	turtle.dig()
	local success, data = turtle.inspectDown()
	if(data.name=="minecraft:grass") then
		break
	end
	turtle.digDown()
	turtle.down()
end

turtle.back()
turtle.down()

print("Done.")
