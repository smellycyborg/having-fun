local Part = require(game:GetService('ReplicatedStorage'):WaitForChild('PartManager'))

local mouse = game.Players.LocalPlayer:GetMouse()

mouse.Button1Down:Connect(function()
	Part:changeColor(mouse, BrickColor.Random())
end)
