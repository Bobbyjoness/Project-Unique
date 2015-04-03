--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

--Resources.lua holds all the resources/resource-related functions

--Objects
Objects = {}
Objects.count = table.getn(Objects)

function Objects.Add(x,y,spr)
    table.insert(Objects,Object(Objects.count+1,x,y,spr))
    Objects.count = Objects.count + 1
    return Objects[Objects.count]
end

function Objects.Remove(id)
    if Objects.count > 0 then
        if id == nil then
            table.remove(Objects)
        else
            table.remove(Objects,id)
        end
    Objects.count = Objects.count - 1
    end
end

function Objects.Draw()
    for i = 1, table.getn(Objects) do
        Objects[i]:draw()
    end
end




--Sprites
Sprites = {}
Sprites.count = table.getn(Sprites)

function Sprites.Add(frames)
    table.insert(Sprites,Sprite(frames))
    Sprites.count = Sprites.count + 1
    return Sprites[Sprites.count]
end

function Sprites.Remove(id)
    if Sprites.count > 0 then
        if id == nil then
            table.remove(Sprites)
        else
            table.remove(Sprites,id)
        end
    Sprites.count = Sprites.count - 1
    end
end