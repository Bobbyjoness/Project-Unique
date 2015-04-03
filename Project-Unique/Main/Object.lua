--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

--Object.lua holds the object code

Object = Class{}

function Object:init(id,x,y)
    self.id = id
    self.x = x
    self.y = y
    self.sprite = Sprite({"tst.png"})
end

function Object:step()

end

function Object:draw()
    if self.sprite.frames ~= nil then
        love.graphics.draw(self.sprite.frames[1],self.x,self.y)
    else
        love.graphics.print("object #" .. self.id,self.x,self.y)
    end
end