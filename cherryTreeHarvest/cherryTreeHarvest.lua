turtle.digUp()
turtle.up()
turtle.dig()
turtle.forward()
turtle.dig()
turtle.turnRight()
turtle.dig()
turtle.turnLeft()
turtle.turnLeft()
turtle.dig()
function branch()
	local success, data = turtle.inspect()
	if(success and data.name=="blue_skies:cherry_log") then
		turtle.dig()
		turtle.forward()
		turtle.digUp()
		turtle.up()
		turtle.dig()
		turtle.forward()
		turtle.digUp()
		turtle.up()
		turtle.dig()	
		turtle.down()
		turtle.back()
		turtle.down()
		turtle.back()
	end
end
	

while(true) do
	
  	local success, data = turtle.inspectUp()
	if(success and data.name~="blue_skies:cherry_log") then
		break
	elseif (not success) then
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
	local success = turtle.inspectDown()
	if(success) then
		break
	end
	turtle.digDown()
	turtle.down()
end

turtle.turnRight()
turtle.back()
turtle.down()

print("Done.")
