--Project Unique!
--The engine behind Love Game Maker
--Currently a major work in progress!

--Resources.lua holds all the resources/resource-related functions

--Objects
Objects = {}
Objects.count = table.getn(Objects)

function Objects.Add(x,y,spr,animspd)
    table.insert(Objects,Object(Objects.count+1,x,y,spr,animspd))
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
    for i = 1, Objects.count do
        Objects[i]:draw()
    end
end

function Objects.Update(dt)
    for i = 1, Objects.count do
        Objects[i]:step(dt)
    end
end

function Objects.DoWith(scope,code)
    --Scope can be equal to the id of an object, a table of ids, or to "all" which, naturally, will perform "code"
    --on all objects as opposed to just one.

    if type(scope) == "table" then
        for i = 1, table.getn(scope) do
            if Objects.count >= scope[i] then
                code(Objects[scope[i]])
            end
        end
    elseif scope == "all" then
        for i = 1, Objects.count do
            if Objects.count >= i then
                code(Objects[i])
            end
        end
    else
        if Objects.count >= scope then
            code(Objects[scope])
        end
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