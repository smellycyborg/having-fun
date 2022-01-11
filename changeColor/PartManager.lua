local runService = game:GetService('RunService')
local isClient = runService:IsClient()
local remote = game:GetService('ReplicatedStorage'):FindFirstChild('ChangeColor')

local Part = {}
Part.__index = Part

function Part:changeColor(mouse, color)
	if not isClient then return end
	
	local current = mouse.Target
	if current == nil then return end
	
	local targetIsAPart = current:IsA('Part')
	if targetIsAPart then
		remote:FireServer(current, color)
	end
end

function Part.new(name, color, size)
	local object = {}
	setmetatable(object, Part)
	
	object.Name = name
	object.BrickColor = color
	object.Size = size
	
	local part = Instance.new('Part', workspace)
	part.Name = name
	part.BrickColor = color
	part.Size = size
	
	return object
end

return Part