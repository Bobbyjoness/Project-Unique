--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "Main.libraries.hump.class"
require "Main.Sprite"
require "Main.Object"
require "Main.Resources"

love.window.setTitle("Project Unique Objects test")
spr_test = Sprites.Add({"tst.png"})

function love.draw()
    Objects.Draw()
    love.graphics.print('"Project Unique" Objects test!',100,0)
    love.graphics.print("Press space to add Objects and R to remove them.",100,16)
    love.graphics.print("Objects currently on screen: " .. Objects.count,100,32)
end

function love.keypressed(key)
    if key == " " then
        Objects.Add(0,32*Objects.count,spr_test)
    elseif key == "r" then
        Objects.Remove()
    end
end