local gui = Instance.new("ScreenGui")
gui.Name = "TeleportGui"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local tp = Instance.new("Part")
tp.Position = Vector3.new(102.87, 366, -73.1)
tp.Size = Vector3.new(2048, 574, 2048)
tp.Transparency = 1
tp.Parent = game.Workspace
tp.Anchored = true
-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = gui

-- Create EditText
local editText = Instance.new("TextBox")
editText.Size = UDim2.new(0, 150, 0, 20)
editText.Position = UDim2.new(0, 25, 0, 10)
editText.Text = ""
editText.Parent = frame

-- Create Teleport Button
local teleportButton = Instance.new("TextButton")
teleportButton.Size = UDim2.new(0, 100, 0, 20)
teleportButton.Position = UDim2.new(0, 50, 0, 40)
teleportButton.BackgroundColor3 = Color3.new(0, 0.5, 0)
teleportButton.Text = "Teleport"
teleportButton.Parent = frame

local save = Instance.new("TextButton")
save.Size = UDim2.new(0, 100, 0, 20)
save.Position = UDim2.new(0, 50, 0, 70)
save.BackgroundColor3 = Color3.new(0, 0.5, 0)
save.Text = "Save Position"
save.Name = "Save"
save.Parent = frame

local goto = Instance.new("TextButton")
goto.Size = UDim2.new(0, 30, 0, 20)
goto.Position = UDim2.new(0, 160, 0, 40)
goto.TextSize = 5
goto.BackgroundColor3 = Color3.new(0, 0.5, 0)
goto.Text = "Goto Position"
goto.Name = "TP"
goto.Parent = frame

-- Function to handle button click
local currentPosition = nil
currentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

-- Function to handle button click
local function teleportPlayer()
    local playerToTeleportName = editText.Text
    -- Find player's model
    local playerToTeleport = game.Workspace:FindFirstChild(playerToTeleportName)
    if playerToTeleport and playerToTeleport:IsA("Model") then
        local humanoidRootPart = playerToTeleport:FindFirstChild("HumanoidRootPart")
        
        -- Teleport player's character
        if humanoidRootPart then
            -- Update the current position to the player's current position
            
            local start = true
            
            spawn(function()
                for i = 1, 5 do
                    wait(1)
                    
                    -- Teleport back after 5 seconds if 'start' is still true
                    if not start then
                        break
                    end
                end
                
                if start then
                    -- Teleport back to the previous position if 'start' is still true
                    
                    start = false -- Stop teleporting after 5 seconds
                    wait(1)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPosition
                    wait(0.3)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPosition
                end
            end)
            
            while start do
                wait(0.1)
                
                -- Teleport continuously while 'start' is true
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = humanoidRootPart.CFrame
            end
        end
    end
end


local function savePosition()
  local newpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  wait(0.1)
  currentPosition = newpos
end

local function gotopos()

  -- Teleport the player to the desired position
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPosition

  -- Disable character movement during the fling
  game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true

  -- Wait for a short period to stabilize the character's position
  wait(0.4)
for i,v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
  
  if game.Players.LocalPlayer.Character.PaintBucket.Handle.Anchored == false then
    game.Players.LocalPlayer.Character.PaintBucket.Handle.Anchored = true
  end
  -- Re-enable character movement
  game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false

  -- Reset character position to the initial position
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPosition
  wait(3)
  game.Players.LocalPlayer.Character.PaintBucket.Handle.Anchored = false
end
-- Connect button click event
teleportButton.MouseButton1Click:Connect(teleportPlayer)

save.MouseButton1Click:Connect(savePosition)

goto.MouseButton1Click:Connect(gotopos)

-- Make GUI draggable
local dragToggle, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not input:IsProcessed() then
        dragToggle = true
        dragStart = input.Position
        startPos = gui.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragToggle then
        update(input)
    end
end)