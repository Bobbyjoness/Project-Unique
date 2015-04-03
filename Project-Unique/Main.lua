--Project Unique Objects test!
--A sample to show off simple sprite/Object functionallity in Project Unique.
--By: Radfordhound

Class = require "Main.libraries.hump.class"
require "Main.Sprite"
require "Main.Object"
require "Main.Resources"

love.window.setTitle("Project Unique Objects test")
spr_test = Sprites.Add({"tst.png"})
spr_test2 = Sprites.Add({"tst2.png"})

function love.draw()
    Objects.Draw()

    love.graphics.print('"Project Unique" Objects test!',100,0)
    love.graphics.print("Press space to add Objects and R to remove them.",100,32)
    love.graphics.print("You can use A to move left and D to move right...",100,48)
    love.graphics.print("...and you can press S to change the sprites of all on-screen objects.",100,64)
    love.graphics.print("Objects currently on screen: " .. Objects.count,100,96)

    if love.keyboard.isDown("d") then

        Objects.DoWith("all",
                        function(self)
                            self.x = self.x + 1
                        end)
    elseif love.keyboard.isDown("a") then

        Objects.DoWith("all",
                        function(self)
                            self.x = self.x - 1
                        end)
    end
end

function love.keypressed(key)
    if key == " " then
        Objects.Add(0,32*Objects.count,spr_test)
    elseif key == "r" then
        Objects.Remove()
    elseif key == "s" then
        Objects.DoWith("all",
                        function(self)
                            self.sprite = spr_test2
                        end)
    end
end