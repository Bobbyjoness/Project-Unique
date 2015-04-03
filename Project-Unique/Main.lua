--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "Main.libraries.hump.class"
require "Main.Object"

objects = {Object(1,40,0),Object(2)}
objects[2].y = 20

function love.draw()
    for i = 1, table.getn(objects) do
        objects[i]:draw()
    end
end