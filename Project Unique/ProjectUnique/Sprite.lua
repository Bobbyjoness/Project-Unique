Sprites = {}

SupportedSpriteFormats = {"bmp","dds","hdr","icns","ico","gif","jpg","jpe","jpeg","png","tga"}

function LoadSprite(path,filename)
	if filename ~= nil then
		Sprites[string.sub(filename,0,string.find(filename,"%.")-1)] = love.graphics.newImage(path .. filename)
	else
		Sprites[string.sub(path,0,string.find(path,"%.")-1)] = love.graphics.newImage(path)
	end
end

function DrawSprite(sprite,x,y)
	if sprite ~= nil then
		love.graphics.draw(sprite, Ternary((x ~= nil),x,0), Ternary((y ~= nil),y,0))
	end
end