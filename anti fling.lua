
print("Hello, World!")
local Players = game:GetService("Players")
local plr = Players.buildNbc
local char = plr.Character
local cordition = char.HumanoidRootPart

while true do
if char.Humanoid.PlatformStand == true then
  char.Humanoid.PlatformStand = false
  cordition.CFrame = CFrame.new(0, 3, 0)
  cordition.Anchored = true
  cordition.CFrame = CFrame.new(0, 3, 0)
  wait(2)
  cordition.Anchored = false
  else
  wait(1)
  print("No PlatformStand...")
end
end