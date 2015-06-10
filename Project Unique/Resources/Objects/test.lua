obj_tst = Object:clone()

function obj_tst:Create()
	self.sprite = Sprites["tst"]
end

function obj_tst:Step()
	if self.id == 1 then
		self.x = self.x+1
	end
end

--[[function obj_tst:Draw()
	if self ~= nil then
		DrawText(nil,self.x,self.y)
	end
end--]]