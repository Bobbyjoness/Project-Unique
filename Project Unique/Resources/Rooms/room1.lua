room1 = Room:clone()

function room1:Load()
	self:AddObject(obj_tst,0,90)
	self:AddObject(obj_tst,0,70)
	--self:RemoveObject(1)
end

return room1()
