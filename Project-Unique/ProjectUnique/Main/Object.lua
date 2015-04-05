--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

--Object.lua holds the object code

Object = Class{}

function Object:init(id,x,y,spr,animspd)
    self.id = id
    self.x = x
    self.y = y
    self.sprite = spr
    self.currentframe = 1
    self.timesincelastupdate = 0

    if animspd ~= nil then
        self.animspeed = animspd
    else
        self.animspeed = 1
    end
end

function Object:step(dt)
    --The object's step event
    --TODO: Add stuff
end

function Object:animatesprite()
    if self.timesincelastupdate >= self.animspeed then
        self.currentframe = self.currentframe+1
        self.timesincelastupdate = 0
    end

    self.timesincelastupdate = self.timesincelastupdate + 1

    if self.currentframe > table.getn(self.sprite.frames) then
        self.currentframe = 1
    end
end

function Object:changesprite(newsprite)
    self.currentframe = 1
    self.sprite = newsprite
end

function Object:draw()
    if self.sprite ~= nil and self.sprite.frames ~= nil then
        love.graphics.draw(self.sprite.frames[self.currentframe],self.x,self.y)
        Object.animatesprite(self)
    else
        love.graphics.print("object #" .. self.id,self.x,self.y)
    end
end