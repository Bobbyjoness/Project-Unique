obj_tst = Object:clone() --Make a new object called 'obj_tst' by cloning Project Unique's 'Object' class.

function obj_tst:Create() --This function is executed whenever a new instance of obj_tst is spawned.
	self.sprite = Sprites["tst"] --Set your sprite when first spawned to 'tst.png' found within Resources/Sprites
end

function obj_tst:Step() --This function is executed for each obj_tst object every second.
	--Move left or right when the appropriate key is pressed.
	if keyisDown("d") or keyisDown("right") then
		self.x = self.x + 1 --This increments our object's 'x' position. Think of grids in math.
	elseif keyisDown("a") or keyisDown("left") then
		self.x = self.x - 1 --This decrements our object's 'x' position. Think of grids in math.
	end
end

function obj_tst:Keypressed(key) --This function is executed for each obj_tst object whenever a key is pressed.
	if key == "s" then
		self.sprite = Sprites["tst2"] --Change your sprite when the 's' key is pressed.
	end
end

--We don't hand an instance of our objects over to Project Unique as they are created by the room when needed.
--In fact... handing them over to Project Unique would only mess with our game in weird ways!