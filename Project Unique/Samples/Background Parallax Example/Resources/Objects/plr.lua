plr = Object:clone() --Make a new object called 'plr' by cloning Project Unique's 'Object' class.

function plr:Create() --This function is executed whenever a new instance of plr is spawned.
	self.sprite = Sprites["plr"] --Set your sprite when first spawned to 'plr.png' found within Resources/Sprites
	self.sprite:setFilter("nearest") --Make your sprite pixelated, rather than overly-smoothed.
end

function plr:Draw() --This function is executed every frame and is the place to draw graphics to the screen.
	DrawSprite(self.sprite,self.x,self.y,0,2,2) --Draw your sprite at your X and Y positions with no rotation, and at a scale of X:2 Y:2. In other words, this draws the player exactly the same as Project Unique would normally.. except at a slightly larger size. The default scale is X:1 Y:1.
end

--We don't hand an instance of our objects over to Project Unique as they are created by the room when needed.
--In fact... handing them over to Project Unique would only mess with our game in weird ways!