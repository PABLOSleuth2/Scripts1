local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local TeleportCooldown = 5 -- seconds

local ScreenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.ResetOnSpawn = false
local PlayerListFrame = Instance.new("ScrollingFrame", ScreenGui)
PlayerListFrame.Size = UDim2.new(0.2, 0, 0.6, 0)
PlayerListFrame.Position = UDim2.new(0, 10, 0, 10)
PlayerListFrame.BackgroundTransparency = 0.5
PlayerListFrame.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
PlayerListFrame.ScrollBarThickness = 10

local function createButton(player)
    local Button = Instance.new("TextButton", PlayerListFrame)
    Button.Size = UDim2.new(1, -10, 0, 30)
    Button.Position = UDim2.new(0, 5, 0, (#PlayerListFrame:GetChildren() - 1) * 35 + 5)
    Button.Text = player.DisplayName
    Button.BackgroundTransparency = 0.5
    Button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)

    Button.MouseButton1Click:Connect(function()
        local targetCharacter = Workspace:FindFirstChild(player.Name)
        if targetCharacter then
            local targetHumanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
            local localHumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if targetHumanoidRootPart and localHumanoidRootPart then
                localHumanoidRootPart.CFrame = targetHumanoidRootPart.CFrame
                wait(0.1)
                targetHumanoidRootPart.Anchored = true
                wait(TeleportCooldown)
                targetHumanoidRootPart.Anchored = false
            else
                warn("HumanoidRootPart not found for either local or target character")
            end
        else
            warn("Target character not found in workspace")
        end
    end)
end

local function updatePlayerList()
    for _, child in ipairs(PlayerListFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    for _, player in ipairs(Players:GetPlayers()) do
        createButton(player)
    end

    -- Adjust CanvasSize to fit all buttons
    PlayerListFrame.CanvasSize = UDim2.new(0, 0, 0, #Players:GetPlayers() * 35)
end

Players.PlayerAdded:Connect(updatePlayerList)
Players.PlayerRemoving:Connect(updatePlayerList)

updatePlayerList()

-- Adding the copy and teleport button
local CopyTeleportButton = Instance.new("TextButton", ScreenGui)
CopyTeleportButton.Size = UDim2.new(0.2, 0, 0, 50)
CopyTeleportButton.Position = UDim2.new(0, 10, 0.7, 10)
CopyTeleportButton.Text = "Copy & Teleport Back"
CopyTeleportButton.BackgroundTransparency = 0.5
CopyTeleportButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)

local previousPosition = nil

CopyTeleportButton.MouseButton1Click:Connect(function()
    local localCharacter = LocalPlayer.Character
    if localCharacter then
        local localHumanoidRootPart = localCharacter:FindFirstChild("HumanoidRootPart")
        if localHumanoidRootPart then
            previousPosition = localHumanoidRootPart.CFrame
            wait(5)
            localHumanoidRootPart.CFrame = previousPosition
        else
            warn("HumanoidRootPart not found for local character")
        end
    else
        warn("Local character not found")
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/PABLOSleuth2/Scripts1/main/RobloxScripts/TEST/Fling%20GUI.txt",true))()
