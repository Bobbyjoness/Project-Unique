--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "ProjectUnique.libraries.hump.class"
require "ProjectUnique.Main.Sprite"
require "ProjectUnique.Main.Object"
require "ProjectUnique.Main.Resources"

framerate = 60

local next_time = 0

function love.load()
    next_time = love.timer.getTime()
end

function love.update(dt)
    next_time = next_time + 1/framerate
    Objects.Update(dt)

    if Step ~= nil then
        return Step(dt)
    end
end

function love.draw()
    Objects.Draw()
    if Draw ~= nil then
        Draw()
    end

    local cur_time = love.timer.getTime()
    if next_time <= cur_time then
        next_time = cur_time
        return
    end
    love.timer.sleep(next_time - cur_time)
end

function love.keypressed(key)
    if Keypressed ~= nil then
        return Keypressed(key)
    end
end

function keyisDown(key)
    return love.keyboard.isDown(key)
end