local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- 🖥️ Make the GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ClickDisplayGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- 📄 Add UIPageLayout
local pageLayout = Instance.new("UIPageLayout")
pageLayout.FillDirection = Enum.FillDirection.Horizontal
pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
pageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
pageLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
pageLayout.TweenTime = 0.25
pageLayout.EasingDirection = Enum.EasingDirection.InOut
pageLayout.EasingStyle = Enum.EasingStyle.Quad
pageLayout.Parent = screenGui

-- 📝 Make the TextLabel
local label = Instance.new("TextLabel")
label.Name = "InfoLabel"
label.Size = UDim2.new(0, 300, 0, 50)
label.Position = UDim2.new(0.5, -150, 0, 50)
label.AnchorPoint = Vector2.new(0.5, 0)
label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.Font = Enum.Font.SourceSansBold
label.Text = "Проп затты басыңыз!"
label.LayoutOrder = 1
label.Parent = screenGui

-- 👆 Detect model click
Mouse.Button1Down:Connect(function()
	local target = Mouse.Target
	if target and target:FindFirstAncestorOfClass("Model") then
		local model = target:FindFirstAncestorOfClass("Model")
		local modelName = model.Name

		if string.find(modelName, "Prop") then
			local playerName = modelName:gsub("Prop", "")
			local foundPlayer = Players:FindFirstChild(playerName)

			if foundPlayer then
				label.Text = "Істеген адам: " .. foundPlayer.DisplayName
			else
				label.Text = "Адам табыла алмадық: " .. playerName
			end
		end
	end
end)
