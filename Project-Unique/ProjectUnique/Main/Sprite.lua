--Sprite.lua holds the sprite class, as well as all the sprite-related functions!

Sprite = Class{}

function Sprite:init(frames)
    if frames ~= nil then
        self.frames = {}
        for i=1,table.getn(frames) do
            table.insert(self.frames,love.graphics.newImage(frames[i]))
        end
    end
end

function Sprite:update()
    --
end