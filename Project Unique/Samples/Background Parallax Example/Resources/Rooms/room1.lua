room1 = Room:clone() --Make a new room called 'room1' by cloning Project Unique's 'Room' class.

function room1:Load() --This function is executed when the room becomes active.
	love.graphics.setBackgroundColor(0,255,255) --Make the background color light blue.
	
	--Layer 1
	self.Backgrounds[1] = Backgrounds["bg"] --This loads bg.png from Resources/Backgrounds and sets room1's layer 1 background to it.
	
	--Layer 2
	self.Backgrounds[2] = Backgrounds["sky"] --This loads sky.png from Resources/Backgrounds and sets room1's layer 2 background to it.
	self.Backgrounds[2].dowraph = true --This enables room1's layer 2 Background to wrap (Or infinitely repeat.) horizontally.
	self.Backgrounds[2].hspd = -1 --This enables room1's layer 2 Background to move horizontally at a speed of -1... or, in other words, it goes at a speed of 1 in reverse.
	
	--Layer 3
	self.Backgrounds[3] = Backgrounds["mountain"] --This loads mountain.png from Resources/Backgrounds and sets room1's layer 3 background to it.
	self.Backgrounds[3].bg:setFilter("nearest") --This makes room1's layer 3 background pixelated, rather than over-ly smoothed.
	self.Backgrounds[3].dowraph = true --This enables room1's layer 3 Background to wrap (Or infinitely repeat.) horizontally.
	self.Backgrounds[3].hspd = -0.2 --This enables room1's layer 3 Background to move horizontally at a speed of -0.2... or, in other words, it goes at a speed of 0.2 in reverse.
	self.Backgrounds[3].y = 53 --This sets the Y position of room1's layer 3 Background to 53. In other words, this makes it 53 pixels from the top of the screen.
	self.Backgrounds[3].x = 3 --This sets the X position of room1's layer 3 Background to 3. In other words, this makes it 3 pixels from the left side of the screen.
	
	--Layer 4
	self.Backgrounds[4] = Backgrounds["sky2"] --This loads sky2.png from Resources/Backgrounds and sets room1's layer 4 background to it.
	self.Backgrounds[4].bg:setFilter("nearest") --This makes room1's layer 4 background pixelated, rather than over-ly smoothed.
	self.Backgrounds[4].dowraph = true --This enables room1's layer 4 Background to wrap (Or infinitely repeat.) horizontally.
	self.Backgrounds[4].hspd = -1 --This enables room1's layer 4 Background to move horizontally at a speed of -1... or, in other words, it goes at a speed of 1 in reverse.
	
	--Layer 5
	self.Backgrounds[5] = Backgrounds["grass"] --This loads grass.png from Resources/Backgrounds and sets room1's layer 5 background to it.
	self.Backgrounds[5].y = 532 --This sets the Y position of room1's layer 5 background to 532. In other words, this makes it 532 pixels from the top of the screen.
	self.Backgrounds[5].dowraph = true --This enables room1's layer 5 Background to wrap (Or infinitely repeat.) horizontally.
	self.Backgrounds[5].hspd = -1 --This enables room1's layer 5 Background to move horizontally at a speed of -1... or, in other words, it goes at a speed of 1 in reverse.
	
	self:AddObject(plr,10,512) --And, finally, this adds a new instance of the 'plr' object defined in Resources/Objects to room1 at X:10 Y:512.
end

return room1() --Make an instance of our new room and hand it over to Project Unique so it can add it to it's list of rooms.