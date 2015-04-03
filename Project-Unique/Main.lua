--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "Main.libraries.hump.class"
require "Main.Sprite"
require "Main.Object"
require "Main.Objects"

love.window.setTitle("Project Unique Objects test")

function love.draw()
    Objects.Draw()
    love.graphics.print('"Project Unique" Objects test!',100,0)
    love.graphics.print("Press space to add Objects and R to remove them.",100,16)
end

function love.keypressed(key)
    if key == " " then
        Objects.Add()
    elseif key == "r" then
        Objects.Remove()
    end
end