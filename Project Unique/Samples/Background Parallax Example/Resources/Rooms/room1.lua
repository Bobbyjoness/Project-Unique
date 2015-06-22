room1 = Room:clone() --Make a new room called 'room1' by cloning Project Unique's 'Room' class.

function room1:Load() --This function is executed when the room becomes active.
	love.graphics.setBackgroundColor(0,255,255) --Make the background color light blue.
	
	--Layer 1
	self.Backgrounds[1] = Background("bg.png") --This loads bg.png from the "Resources/Backgrounds" folder and sets room1's layer 1 background to it.
	
	--Layer 2
	self.Backgrounds[2] = Background("sky") --Same as before, except without it's extension! That's right, Project Unique can figure out the extension of the file so we don't have to! You just have to make sure the file is in the "Resources/Backgrounds" folder. This is handy for us, but it means the computer has to do a little more work, so it's a tad slower.
	self.Backgrounds[2].dowraph = true --This enables room1's layer 2 Background to wrap (Or infinitely repeat.) horizontally.
	self.Backgrounds[2].hspd = -1 --This enables room1's layer 2 Background to move horizontally at a speed of -1... or, in other words, it goes at a speed of 1 in reverse.
	
	--Layer 3
	self.Backgrounds[3] = Background("Resources/Backgrounds/mountain.png") --[[You can set the path to the file if you want, too! This is handy if you don't want to use the "Resources/Backgrounds" folder for whatever reason.
		...Just make sure you use '/' forward slashes rather than '\' backward slashes!--]]
	self.Backgrounds[3].bg:setFilter("nearest") --This makes room1's layer 3 background pixelated, rather than over-ly smoothed.
	self.Backgrounds[3].dowraph = true
	self.Backgrounds[3].hspd = -0.2 --Yes, you can use decimals as well. ;)
	self.Backgrounds[3].y = 53 --This sets the Y position of room1's layer 3 Background to 53. In other words, this makes it 53 pixels from the top of the screen. Think of grids in math, but with the Y value in reverse.
	self.Backgrounds[3].x = 3 --This sets the X position of room1's layer 3 Background to 3. In other words, this makes it 3 pixels from the left side of the screen. Think of grids in math.
	
	--Layer 4
	self.Backgrounds[4] = Background(love.graphics.newImage("Resources/Backgrounds/sky2.png")) --Yep, that's right! You can even load the actual image yourself instead of having Project Unique do it if you wish! :)
	self.Backgrounds[4].bg:setFilter("nearest")
	self.Backgrounds[4].dowraph = true
	self.Backgrounds[4].hspd = -1
	
	--Layer 5
	self.Backgrounds[5] = Background("grass.png")
	self.Backgrounds[5].y = 532
	self.Backgrounds[5].dowraph = true
	self.Backgrounds[5].hspd = -1
	
	self:AddObject(plr,10,512) --And, finally, this adds a new instance of the 'plr' object defined in Resources/Objects to room1 at X:10 Y:512.
end

return room1() --Make an instance of our new room and hand it over to Project Unique so it can add it to it's list of rooms.