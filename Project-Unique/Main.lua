--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "Main.libraries.hump.class"
require "Main.Object"

object1 = Object()

function love.draw()
    love.graphics.print("test " .. object1.i,0,0)
end