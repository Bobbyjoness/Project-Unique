--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "ProjectUnique.libraries.hump.class"
require "ProjectUnique.Main.Sprite"
require "ProjectUnique.Main.Object"
require "ProjectUnique.Main.Resources"

framerate = 60

function love.update(dt)
    dt = math.min(dt, 1/framerate)

    if Step ~= nil then
        return Step(dt)
    end
end

function love.draw()
    Objects.Draw()
    if Draw ~= nil then
        return Draw()
    end
end

function love.keypressed(key)
    if Keypressed ~= nil then
        return Keypressed(key)
    end
end

function keyisDown(key)
    return love.keyboard.isDown(key)
end