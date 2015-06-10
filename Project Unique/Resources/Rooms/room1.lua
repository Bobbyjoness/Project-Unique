room1 = Room:clone() --Make a new room called 'room1' by cloning Project Unique's 'Room' class.

function room1:Keypressed(key) --This function is executed whenever the user presses a key and the game is in room1.
	if key == " " then
		self:AddObject(obj_tst,0,32*table.getn(self.Objects)) --Add an instance of obj_tst underneath all other obj_tst instances when the spacebar is pressed.
    elseif key == "r" then 
        self:RemoveObject() --Remove the most-recently-added object from the room when the 'r' key is pressed.
    end
end

function room1:Draw() --This function is executed every frame when the game is in room1 and should be used to draw stuff.
	--Draw a bunch of text!
	DrawText("Project Unique v" .. projectuniqueversion .." Objects Example!",100,0)
	DrawText("Press space to add Objects and R to remove them",100,32)
	DrawText("You can use A to move left and D to move right...",100,48)
	DrawText("...and you can press S to change the sprites of all on-screen objects.",100,64)
	DrawText("Objects currently on screen: " .. table.getn(Rooms[currentroom].Objects),100,96)
end

return room1() --Make an instance of our new room and hand it over to Project Unique so it can add it to it's list of rooms.