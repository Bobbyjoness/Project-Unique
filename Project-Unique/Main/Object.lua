--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

Object = Class{}

function Object:init(id,x,y)
    self.id = id
    self.x = x
    self.y = y
end

function Object:step()

end

function Object:draw()
    love.graphics.print("object #" .. self.id,self.x,self.y)
end