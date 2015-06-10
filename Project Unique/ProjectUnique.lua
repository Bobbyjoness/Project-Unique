--"Project Unique" is the engine behind Love Game Maker; a tool allowing kids to easily create
--games using the LOVE2D framework.
--As of now it's under heavy development, so don't expect anything to work 100%! ;)

--Declare/define some variables
currentroom = 1
projectuniqueversion = "DEV 1.0"

--Require ALL the things! :D
require "ProjectUnique.libraries.hump"
require "ProjectUnique.Advanced"
require "ProjectUnique.Sprite"
require "ProjectUnique.Object"
require "ProjectUnique.Room"
require "ProjectUnique.Text"

--Load all the 'sprites' under the Resources/Sprites folder.
local files = love.filesystem.getDirectoryItems("Resources/Sprites")

for i, file in ipairs(files) do
	if SpriteFileisSupported(file) then
		LoadSprite("Resources/Sprites/",file)
	end
end

--Require all the 'objects' under the Resources/Objects folder.
files = love.filesystem.getDirectoryItems("Resources/Objects")

for i, file in ipairs(files) do
	if string.find(file,"%.lua") ~= nil then
		require ("Resources.Objects."..string.sub(file,0,string.find(file,"%.lua")-1))
	end
end

--Require all the 'rooms' under the Resources/Rooms folder.
files = love.filesystem.getDirectoryItems("Resources/Rooms")

for i, file in ipairs(files) do
	if string.find(file,"%.lua") ~= nil then
		table.insert(Rooms,require ("Resources.Rooms."..string.sub(file,0,string.find(file,"%.lua")-1)))
	end
end

--Lastly, require all the 'fonts' under the Resources/Fonts folder.
files = love.filesystem.getDirectoryItems("Resources/Fonts")

for i, file in ipairs(files) do
	if string.find(string.lower(file),"%.ttf") ~= nil then
		LoadFont(file,15)
	end
end

LoadRoom(1) --Load the first room in the 'Rooms' table... if that wasn't obvious enough. :P

--------------------------------------------------------
--Now for the wrapping of the standard LOVE functions!--
--------------------------------------------------------

function love.update(dt)
	if Rooms[currentroom] ~= nil then
		Rooms[currentroom]:Update(dt)
	end
	
	if Step ~= nil then
		return Step(dt)
	end
end

function love.draw()
	if Rooms[currentroom] ~= nil and Rooms[currentroom].Draw~= nil then
		Rooms[currentroom]:Draw(dt)
	end
	
	if Draw ~= nil then
		return Draw()
	end
end