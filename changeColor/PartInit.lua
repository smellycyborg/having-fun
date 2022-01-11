local Part = require(game:GetService('ReplicatedStorage'):WaitForChild('PartManager'))
local remote = game:GetService('ReplicatedStorage'):FindFirstChild('ChangeColor')

local size = Vector3.new(10,15,20)
local color = BrickColor.new("Alder")
local name = 'bub'
local part = Part.new(name, color, size)
print(part.Name)

remote.OnServerEvent:Connect(function(player, current, color)
	current.BrickColor = color
end)