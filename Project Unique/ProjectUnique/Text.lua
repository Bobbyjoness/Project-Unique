--This file handles text-based functions
Fonts = {}

function SetFont(name,size)
	if name == nil then
		return
	end
	
	if love.filesystem.exists("Resources/Fonts/" .. name) then
		shrtnm = string.sub(name,0,string.find(name,"%.ttf")-1)
		
		if Fonts[shrtnm] == nil then
			Fonts[shrtnm] = love.graphics.newFont("Resources/Fonts/" .. name, Ternary((size ~= nil),size,15))
		end
	
		love.graphics.setFont(Fonts[shrtnm])
	end
end

function DrawText(text,x,y)
	love.graphics.print(Ternary((text ~= nil),text,"MISSINGNO"),Ternary((x ~= nil),x,0),Ternary((y ~= nil),y,0))
end