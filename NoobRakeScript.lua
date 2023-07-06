local re = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")
local rre = game:GetService("RobloxReplicatedStorage")
local sgui = game:GetService("StarterGui")
local splayer = game:GetService("StarterPlayer")
local speed = splayer.StarterCharacterScripts.CharValues.RunSpeed
	    speed.Value = 9999999999999999999999999999
if re:FindFirstChild("KickPlayer") then
  re.KickPlayer:Destroy()
  re.GetDeviceUser:Destroy()
  re.GetCheemsSecurityInfo:Destroy()
  re.CheemsSecurityEvents:Destroy()
  workspace.AntiNoclipGlitchPart:Destroy()
  workspace.AntiExploitDisabled:Destroy()
  rre.SetPlayerBlockList:Destroy()
  rre.UpdatePlayerBlockList:Destroy()
  sgui.DeviceScript:Destroy()
  print("Success Deleted Security!")
end

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("RAKOOF SCRIPT! 0.1.1", "Ocean")
local Tab1 = Window:NewTab("RakOOF")
local Tab1Section = Tab1:NewSection("RakOOF Script")
local Tab2 = Window:NewTab("Player")
local Tab2Section = Tab2:NewSection("Player Properties")
local Tab3 = Window:NewTab("Locations")
local Tab3Section = Tab3:NewSection("Locations")
local Tab4 = Window:NewTab("Other")
local Tab4Section = Tab4:NewSection("Other")

local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
Tab1Section:NewButton("View RakOOF", "Views Wheres RakOOF", function()
    local chatbot1 = true
	if chatbot1 then
	  local camera = workspace.CurrentCamera
	  camera.CameraSubject = workspace.RakoofNPC.Head
	end
end)

Tab1Section:NewButton("Unview RakOOF", "Unviews RakOOF", function()
    local chatbot1 = true
	if chatbot1 then
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  local camera = workspace.CurrentCamera
	  camera.CameraSubject = char.Humanoid
	end
end)

Tab1Section:NewButton("ESP RakOOF", "Views Wheres ESP RakOOF", function()
  local workspace = game:GetService("Workspace")
  local s = Instance.new("SurfaceGui")
  s.Parent = workspace.RakoofNPC.Torso
  s.Name = "Front"
  s.CanvasSize = Vector2.new(800, 609)
  s.Face = Enum.NormalId.Front -- Assign the correct face EnumItem
  s.AlwaysOnTop = true
  s.Enabled = true
  local sf = Instance.new("Frame")
  sf.Parent = workspace.RakoofNPC.Torso.Front
  sf.BackgroundColor3 = Color3.new(255, 0, 0)
  sf.Size = UDim2.new(0.91, 100, 0.81, 100)
  
  local sb = Instance.new("SurfaceGui")
  sb.Parent = workspace.RakoofNPC.Torso
  sb.Name = "Back"
  sb.CanvasSize = Vector2.new(800, 609)
  sb.Face = Enum.NormalId.Back -- Assign the correct face EnumItem
  sb.AlwaysOnTop = true
  sb.Enabled = true
  local sbf = Instance.new("Frame")
  sbf.Parent = workspace.RakoofNPC.Torso.Back
  sbf.BackgroundColor3 = Color3.new(255, 0, 0)
  sbf.Size = UDim2.new(0.91, 100, 0.81, 100)
  local sbb = Instance.new("SurfaceGui")
  sbb.Parent = workspace.RakoofNPC.Torso
  sbb.Name = "Left"
  sbb.CanvasSize = Vector2.new(800, 609)
  sbb.Face = Enum.NormalId.Left -- Assign the correct face EnumItem
  sbb.AlwaysOnTop = true
  sbb.Enabled = true
  local sbbf = Instance.new("Frame")
  sbbf.Parent = workspace.RakoofNPC.Torso.Left
  sbbf.BackgroundColor3 = Color3.new(255, 0, 0)
  sbbf.Size = UDim2.new(0.91, 100, 0.81, 100)
  local sbbb = Instance.new("SurfaceGui")
  sbbb.Parent = workspace.RakoofNPC.Torso
  sbbb.Name = "Right"
  sbbb.CanvasSize = Vector2.new(800, 609)
  sbbb.Face = Enum.NormalId.Right -- Assign the correct face EnumItem
  sbbb.AlwaysOnTop = true
  sbbb.Enabled = true
  local sbbbf = Instance.new("Frame")
  sbbbf.Parent = workspace.RakoofNPC.Torso.Right
  sbbbf.BackgroundColor3 = Color3.new(255, 0, 0)
  sbbbf.Size = UDim2.new(0.91, 100, 0.81, 100)
  local sbbbb = Instance.new("SurfaceGui")
  sbbbb.Parent = workspace.RakoofNPC.Torso
  sbbbb.Name = "Top"
  sbbbb.CanvasSize = Vector2.new(800, 609)
  sbbbb.Face = Enum.NormalId.Top -- Assign the correct face EnumItem
  sbbbb.AlwaysOnTop = true
  sbbbb.Enabled = true
  local sbbbbf = Instance.new("Frame")
  sbbbbf.Parent = workspace.RakoofNPC.Torso.Top
  sbbbbf.BackgroundColor3 = Color3.new(255, 0, 0)
  sbbbbf.Size = UDim2.new(0.91, 100, 0.81, 100)
  local sbbbbb = Instance.new("SurfaceGui")
  sbbbbb.Parent = workspace.RakoofNPC.Torso
  sbbbbb.Name = "Bottom"
  sbbbbb.CanvasSize = Vector2.new(800, 609)
  sbbbbb.Face = Enum.NormalId.Bottom -- Assign the correct face EnumItem
  sbbbbb.AlwaysOnTop = true
  sbbbbb.Enabled = true
  local sbbbbbf = Instance.new("Frame")
  sbbbbbf.Parent = workspace.RakoofNPC.Torso.Bottom
  sbbbbbf.BackgroundColor3 = Color3.new(255, 0, 0)
  sbbbbbf.Size = UDim2.new(0.91, 100, 0.81, 100)
  print("The ESP Running!")
end)

Tab1Section:NewButton("UNESP RakOOF", "Views Wheres UNESP RakOOF", function()
    local chatbot1 = true
	if chatbot1 then
	  local workspace = game:GetService("Workspace")
	  if workspace.RakoofNPC.Torso:FindFirstChild("Back") then
	  workspace.RakoofNPC.Torso.Back:Destroy()
	    workspace.RakoofNPC.Torso.Front:Destroy()
	    workspace.RakoofNPC.Torso.Left:Destroy()
	    workspace.RakoofNPC.Torso.Bottom:Destroy()
	    workspace.RakoofNPC.Torso.Top:Destroy()
	    workspace.RakoofNPC.Torso.Right:Destroy()
	end
	end
end)

Tab1Section:NewButton("Very High Light On Your Flashlight", "disable flashlight on your inventory, dont hold.", function()
    local chatbot1 = true
	if chatbot1 then
	  local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  if plr.Backpack.Flashlight then
	  local flashlight = plr.Backpack.Flashlight
	  local light = flashlight.LightPart.LightAttachment.Light
	  light.Angle = 180
	  light.Brightness = 999999
	    else
	    print("You dont need hold, disable flashlight on your inventory.")
	  end
	end
end)

Tab1Section:NewButton("Reset Flashlight", "disable flashlight on your inventory, dont hold.", function()
    local chatbot1 = true
	if chatbot1 then
	  local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  if plr.Backpack.Flashlight then
	  local flashlight = plr.Backpack.Flashlight
	  local light = flashlight.LightPart.LightAttachment.Light
	  light.Angle = 90
	  light.Brightness = 5
	    else
	    print("You dont need hold, disable flashlight on your inventory.")
	  end
	end
end)

Tab1Section:NewButton("Grab Items For Free", "Checks If Player has items it will put our backpack", function()
if chatbot1 then
    local Players = game:GetService("Players")
    local lp = Players.LocalPlayer
    local plrs = Players:GetChildren()

    for i, v in ipairs(plrs) do
        if v ~= lp and v.Parent ~= nil then -- Exclude the local player and check if the player has a parent
            local backpack = v:FindFirstChild("Backpack")
            if backpack then
                for _, tool in ipairs(backpack:GetChildren()) do
                    if tool:IsA("Watch") and not lp.Backpack:FindFirstChild(tool.Name) then
                        tool:Clone().Parent = lp.Backpack
                    end
                  if tool:IsA("Map") and not lp.Backpack:FindFirstChild(tool.Name) then
                        tool:Clone().Parent = lp.Backpack
                    end
                end
            end
        end
    end
end
end)

Tab2Section:NewButton("Remove FallDamage", "Removes FallDamage", function()
    local chatbot1 = true
	if chatbot1 then
	local splayer = game:GetService("StarterPlayer")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  char.FallDamage:Destroy()
	  char.HurtSounds:Destroy()
	  char.CharValues.HumanoidLowHealth:Destroy()
	  splayer.StarterCharacterScripts.FallDamage:Destroy()
	  splayer.StarterCharacterScripts.HurtSounds:Destroy()
	  splayer.StarterCharacterScripts.CharValues.HumanoidLowHealth:Destroy()
	  char.FallDamage:Destroy()
	  char.HurtSounds:Destroy()
	end
end)

Tab2Section:NewButton("Unlimited Stamina", "UnlimitedStamina", function()
    local chatbot1 = true
	if chatbot1 then
	local splayer = game:GetService("StarterPlayer")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  while true do
	  wait(0.0000001)  
	  local stamina = splayer.StarterCharacterScripts.CharValues.StaminaPercentValue
	  stamina.Value = 999999999999999999999
	  local stamina2 = splayer.StarterCharacterScripts.CharValues.StaminaReloadCount
	  stamina2.Value = 999999999999999999999
	    local stamina3 = char.CharValues.StaminaPercentValue
	  stamina3.Value = 999999999999999999999
	  local stamina4 = char.CharValues.StaminaReloadCount
	  stamina4.Value = 999999999999999999999
	  end
	end
end)

Tab2Section:NewButton("Unlimited Health", "UnlimitedHealth", function()
    local chatbot1 = true
	if chatbot1 then
	local splayer = game:GetService("StarterPlayer")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  while true do
	  wait(0.0000001)
	    char.Humanoid.Health = 100
	    chae.Humanoid.MaxHealth = 100
	  end
	end
end)


Tab2Section:NewButton("Delete Blur", "Delete Blur", function()
    local chatbot1 = true
	if chatbot1 then
	local li = game:GetService("Lighting")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  li.Atmosphere:Destroy()
	  workspace.Camera.FocusCC.Enabled = false
	  workspace.Camera.Blur:Destroy()
	  workspace.Camera.CrawlBlur:Destroy()
	  workspace.Camera.CrawlCC:Destroy()
	  workspace.Camera.FocusCC:Destroy()
	end
end)

Tab4Section:NewButton("Remove Terrain", "", function()
    local chatbot1 = true
	if chatbot1 then
	local li = game:GetService("Lighting")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  workspace.Terrain.Decoration = false
	end
end)

Tab4Section:NewButton("Enable Night Vision (No Tool)", "", function()
    local chatbot1 = true
	if chatbot1 then
	local li = game:GetService("Lighting")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  li.NightVIsionCC.Enabled = true
	  li.Brightness = 2
	  li.Atmosphere:Destroy()
	end
end)

Tab4Section:NewButton("Disable Night Vision (No Tool)", "", function()
    local chatbot1 = true
	if chatbot1 then
	local li = game:GetService("Lighting")  
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  li.NightVIsionCC.Enabled = false
	  li.Brightness = 1
	end
end)

Tab4Section:NewButton("Old Dex 2.0.0", "", function()
    local chatbot1 = true
	if chatbot1 then
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/PABLOSleuth2/Scripts1/main/RobloxScripts/TEST/Dex"))()
	end
end)

Tab3Section:NewButton("PowerStation (Teleport)", "Teleport UwU", function()
    local chatbot1 = true
	if chatbot1 then
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  char.HumanoidRootPart.CFrame = CFrame.new(352.791, 23.3734, 261.637)
	end
end)

Tab2Section:NewSlider("Speed", "Sussy Speed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.CharValues.RunSpeed.Value = v
end)
  
Tab2Section:NewSlider("JumpPower", "Sussy JumpPower", 250, 0, function(b)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = b
end)
  
Tab3Section:NewButton("PlayGround (Teleport)", "Teleport UwU", function()
    local chatbot1 = true
	if chatbot1 then
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  char.HumanoidRootPart.CFrame = CFrame.new(179.111, 64.1, -181.695)
	end
end)

Tab3Section:NewButton("RakOOF (Teleport)", "Teleport UwU", function()
    local chatbot1 = true
	if chatbot1 then
	  local RootPos = char.HumanoidRootPart.Position
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  local rak = workspace.RakoofNPC.HumanoidRootPart.Position
	  char.HumanoidRootPart.CFrame = CFrame.new(rak.X, rak.Y, rak.Z)
	  wait(0.01)
	  char.HumanoidRootPart.CFrame = CFrame.new(RootPos)
	end
end)


Tab3Section:NewButton("Store/Shop (Teleport)", "Teleport UwU", function()
    local chatbot1 = true
	if chatbot1 then
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
	  char.HumanoidRootPart.CFrame = CFrame.new(-249, 29.5686, -385)
	end
end)

while true do
  wait(0.00000001)
  local Players = game:GetService("Players")
  local plr = Players.LocalPlayer
  local char = plr.Character
  local re = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")
local rre = game:GetService("RobloxReplicatedStorage")
local sgui = game:GetService("StarterGui")
 local splayer = game:GetService("StarterPlayer")
  if re:FindFirstChild("KickPlayer") then
  re.KickPlayer:Destroy()
  re.GetDeviceUser:Destroy()
  re.GetCheemsSecurityInfo:Destroy()
  re.CheemsSecurityEvents:Destroy()
  workspace.AntiNoclipGlitchPart:Destroy()
  workspace.AntiExploitDisabled:Destroy()
  rre.SetPlayerBlockList:Destroy()
  rre.UpdatePlayerBlockList:Destroy()
  sgui.DeviceScript:Destroy()
  print("Looping Deleting Security")
end
end
