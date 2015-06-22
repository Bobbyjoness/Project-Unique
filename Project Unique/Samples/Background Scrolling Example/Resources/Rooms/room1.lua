room1 = Room:clone() --Make a new room called 'room1' by cloning Project Unique's 'Room' class.

function room1:Load() --This function is executed when the room becomes active.
	self.Backgrounds[1] = Background("bgwrap.png") --This loads bgwrap.png from "Resources/Backgrounds" and sets room1's layer 1 background to it.
	self.Backgrounds[1].dowraph = true --This enables room1's layer 1 Background to wrap (Or infinitely repeat.) horizontally
	self.Backgrounds[1].dowrapv = true --This enables room1's layer 1 Background to wrap (Or infinitely repeat.) vertically
	self.Backgrounds[1].hspd = -7 --This enables room1's layer 1 Background to move horizontally at a speed of -7... or, in other words, it goes at a speed of 7 in reverse.
	self.Backgrounds[1].vspd = -7 --This enables room1's layer 1 Background to move vertically at a speed of -7... or, in other words, it goes at a speed of 7 in reverse.
end

return room1() --Make an instance of our new room and hand it over to Project Unique so it can add it to it's list of rooms.