--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

--Objects.lua holds all the object-related functions, as well as the global Objects table!

Objects = {}
Objects.count = table.getn(Objects)

function Objects:Add()
    table.insert(Objects,Object(Objects.count+1,0,32*Objects.count))
    Objects.count = Objects.count + 1
end

function Objects:Remove()
    if Objects.count > 0 then
        table.remove(Objects)
        Objects.count = Objects.count - 1
    end
end

function Objects:Draw()
    for i = 1, table.getn(Objects) do
        Objects[i]:draw()
    end
end