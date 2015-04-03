--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Class = require "Main.libraries.hump.class"

Critter = Class{}
Lizard = Class{}
Class.include(Lizard, Critter)

function Critter:draw()
    love.graphics.print("Hey!",0,20)
end

function Lizard:draw()
    love.graphics.print("I'm also a lizard!",0,40)
end

crit = Lizard()

function love.draw()
    love.graphics.print("test",0,0)
    crit.draw()
end