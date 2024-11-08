-- Move & Ultimate Names
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
local function setToolName(slot, text)
    local hotbar = playerGui:FindFirstChild("Hotbar")
    if not hotbar then return end
    
    local backpack = hotbar:FindFirstChild("Backpack")
    if not backpack then return end
    
    local hotbarFrame = backpack:FindFirstChild("Hotbar")
    if not hotbarFrame then return end
    
    local baseButton = hotbarFrame:FindFirstChild(slot).Base
    if not baseButton then return end
    
    local ToolName = baseButton.ToolName
    ToolName.Text = text
    ToolName.Font = Enum.Font.Arcade
end
-- Setting tool names
setToolName("1", "Judgement !")
setToolName("2", "Crush !")
setToolName("3", "Thy End Is Now")
setToolName("4", "Weak")
local function findGuiAndSetText()
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if not screenGui then return end
    local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
    if not magicHealthFrame then return end
    local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
    if not textLabel then return end
    textLabel.Text = "Thy End Is Now !"
    textLabel.Font = Enum.Font.Arcade
end
playerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()
 wait(0)
 
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Showcaser1/Smth/refs/heads/main/D"))()
 
 wait(0)
 
--[[Animations]]
 
--[[Move 1]]
 
local animationId = 12273188754
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://12272894215"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0
 
 
Anim:Play()
 
Anim:AdjustSpeed(0.1)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(0.9)
 
wait(0.6)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local function teleportAndMoveInCircle()
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local rootPart = LocalPlayer.Character.HumanoidRootPart
local originalPosition = rootPart.Position
local radius = 50 -- Radius of the circular movement
local skyHeight = 500 -- Significant height in the sky
local duration = 1.9 -- Duration to move in a circle
local speed = 3 -- Speed multiplier for high-speed movement
-- Initial teleport to sky
local skyCFrame = CFrame.new(originalPosition.X, skyHeight, originalPosition.Z)
rootPart.CFrame = skyCFrame
local startTime = tick() -- Start time for the circular motion
local connection
connection = RunService.RenderStepped:Connect(function()
local elapsed = tick() - startTime
if elapsed < duration then
-- Calculate new position in the circular path with increased speed
local angle = (elapsed * speed / duration) * (2 * math.pi) -- Full circle with speed multiplier
local newPosX = originalPosition.X + radius * math.cos(angle)
local newPosZ = originalPosition.Z + radius * math.sin(angle)
rootPart.CFrame = CFrame.new(newPosX, skyHeight, newPosZ)
else
-- Teleport back to the original position
rootPart.CFrame = CFrame.new(originalPosition)
connection:Disconnect()
end
end)
else
end
end
-- Call the function to execute the teleportation and movement
teleportAndMoveInCircle()
wait(0)
local BlackFlashHit = Instance.new("Part")
				game.Debris:AddItem(BlackFlashHit, 5)
				BlackFlashHit.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
				local Sparks2 = Instance.new("ParticleEmitter")
				local Blast = Instance.new("ParticleEmitter")
				local Lightning = Instance.new("ParticleEmitter")
				local Wind2 = Instance.new("ParticleEmitter")
				local Sparks = Instance.new("ParticleEmitter")
				-- Properties --
				BlackFlashHit.Anchored = true
				BlackFlashHit.BottomSurface = Enum.SurfaceType.Smooth
				BlackFlashHit.CanCollide = false
				BlackFlashHit.EnableFluidForces = false
				BlackFlashHit.Size = Vector3.new(1, 1, 1)
				BlackFlashHit.TopSurface = Enum.SurfaceType.Smooth
				BlackFlashHit.Transparency = 1
				BlackFlashHit.Name = [[BlackFlashHit]]
				BlackFlashHit.Parent = workspace
				Sparks2.Acceleration = Vector3.new(0, 5, 0)
				Sparks2.Brightness = 15
				Sparks2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks2.Drag = 7
				Sparks2.EmissionDirection = Enum.NormalId.Front
				Sparks2.Enabled = false
				Sparks2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				Sparks2.Lifetime = NumberRange.new(1,2)
				Sparks2.Orientation = Enum.ParticleOrientation.VelocityParallel
				Sparks2.Rate = 400
				Sparks2:Emit(20)
				Sparks2.RotSpeed = NumberRange.new(-300,300)
				Sparks2.Rotation = NumberRange.new(0,360)
				Sparks2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4,2),NumberSequenceKeypoint.new(1,0,0)})
				Sparks2.Speed = NumberRange.new(20,150)
				Sparks2.SpreadAngle = Vector2.new(360, 360)
				Sparks2.Texture = [[rbxassetid://17547405831]]
				Sparks2.Name = [[Sparks2]]
				Sparks2.Parent = BlackFlashHit
				Blast.Brightness = 10
				Blast.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Blast.EmissionDirection = Enum.NormalId.Front
				Blast.Enabled = false
				Blast.Lifetime = NumberRange.new(0.05,0.05)
				Blast.Orientation = Enum.ParticleOrientation.VelocityParallel
				Blast.Rate = 200
				Blast:Emit(20)
				Blast.Rotation = NumberRange.new(-360,360)
				Blast.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,62.2016,0)})
				Blast.Speed = NumberRange.new(0.1,0.1)
				Blast.SpreadAngle = Vector2.new(360, 360)
				Blast.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,2.5125,0)})
				Blast.Texture = [[rbxassetid://7994629137]]
				Blast.Name = [[Blast]]
				Blast.Parent = BlackFlashHit
				Lightning.Brightness = 5
				Lightning.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Lightning.Drag = 3
				Lightning.Enabled = false
				Lightning.FlipbookFramerate = NumberRange.new(20,40)
				Lightning.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Lightning.FlipbookStartRandom = true
				Lightning.Lifetime = NumberRange.new(0.2,1.3)
				Lightning.LockedToPart = true
				Lightning.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Lightning.Rate = 100
				Lightning:Emit(20)
				Lightning.Rotation = NumberRange.new(0,360)
				Lightning.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.033642,12.5435,11.3034),NumberSequenceKeypoint.new(0.075642,16.0988,11.5298),NumberSequenceKeypoint.new(0.109642,9.43785,12.5917),NumberSequenceKeypoint.new(0.177642,14.175,13.7364),NumberSequenceKeypoint.new(1,13.9192,13.4744)})
				Lightning.Speed = NumberRange.new(0.001,10)
				Lightning.SpreadAngle = Vector2.new(360, 360)
				Lightning.Texture = [[rbxassetid://14255829980]]
				Lightning.ZOffset = 2
				Lightning.Name = [[Lightning]]
				Lightning.Parent = BlackFlashHit
				Wind2.Brightness = 3
				Wind2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Wind2.Enabled = false
				Wind2.Lifetime = NumberRange.new(0.1,0.1)
				Wind2.LightEmission = 1
				Wind2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Wind2.Rate = 100
				Wind2:Emit(20)
				Wind2.Rotation = NumberRange.new(-360,360)
				Wind2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,80,0),NumberSequenceKeypoint.new(1,80,0)})
				Wind2.Speed = NumberRange.new(0.01,0.01)
				Wind2.SpreadAngle = Vector2.new(360, 360)
				Wind2.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,0,0)})
				Wind2.Texture = [[rbxassetid://1053548563]]
				Wind2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
				Wind2.Name = [[Wind2]]
				Wind2.Parent = BlackFlashHit
				Sparks.Brightness = 15
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks.Drag = 7
				Sparks.EmissionDirection = Enum.NormalId.Front
				Sparks.Enabled = false
				Sparks.Lifetime = NumberRange.new(0.8,1.3)
				Sparks.Orientation = Enum.ParticleOrientation.VelocityParallel
				Sparks.Rate = 400
				Sparks:Emit(20)
				Sparks.Rotation = NumberRange.new(90,90)
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4.02858,3.04993),NumberSequenceKeypoint.new(0.205642,1.84193,1.74011),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(40,200)
				Sparks.SpreadAngle = Vector2.new(360, 360)
				Sparks.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.231642,5.1956,0),NumberSequenceKeypoint.new(0.32206,0.844828,0),NumberSequenceKeypoint.new(0.46806,4.5586,0),NumberSequenceKeypoint.new(0.49206,0.000789245,0),NumberSequenceKeypoint.new(0.51806,3.78691,0),NumberSequenceKeypoint.new(0.56206,1.97825,0),NumberSequenceKeypoint.new(0.64006,2.28498,0),NumberSequenceKeypoint.new(0.72006,0.104659,0),NumberSequenceKeypoint.new(1,-1.15485,0)})
				Sparks.Texture = [[rbxassetid://15407518755]]
				Sparks.Name = [[Sparks]]
				Sparks.Parent = BlackFlashHit
-- Define a pure white color sequence
local white = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), -- pure white
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))  -- consistent white
}
-- Set each cloned effect to use the white color sequence
local function makeParticlesWhite(effectClone)
    for _, child in ipairs(effectClone:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child.Color = white
            child:Emit(5) -- Emit particles as originally intended
        end
    end
end
-- Original code with only the color modified to white
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0.1)
local BlackFlashHit = Instance.new("Part")
				game.Debris:AddItem(BlackFlashHit, 5)
				BlackFlashHit.CFrame = game.Players.LocalPlayer.Character["Right Arm"].CFrame
				local Sparks2 = Instance.new("ParticleEmitter")
				local Blast = Instance.new("ParticleEmitter")
				local Lightning = Instance.new("ParticleEmitter")
				local Wind2 = Instance.new("ParticleEmitter")
				local Sparks = Instance.new("ParticleEmitter")
				-- Properties --
				BlackFlashHit.Anchored = true
				BlackFlashHit.BottomSurface = Enum.SurfaceType.Smooth
				BlackFlashHit.CanCollide = false
				BlackFlashHit.EnableFluidForces = false
				BlackFlashHit.Size = Vector3.new(1, 1, 1)
				BlackFlashHit.TopSurface = Enum.SurfaceType.Smooth
				BlackFlashHit.Transparency = 1
				BlackFlashHit.Name = [[BlackFlashHit]]
				BlackFlashHit.Parent = workspace
				Sparks2.Acceleration = Vector3.new(0, 5, 0)
				Sparks2.Brightness = 15
				Sparks2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks2.Drag = 7
				Sparks2.EmissionDirection = Enum.NormalId.Front
				Sparks2.Enabled = false
				Sparks2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
				Sparks2.Lifetime = NumberRange.new(1,2)
				Sparks2.Orientation = Enum.ParticleOrientation.VelocityParallel
				Sparks2.Rate = 400
				Sparks2:Emit(20)
				Sparks2.RotSpeed = NumberRange.new(-300,300)
				Sparks2.Rotation = NumberRange.new(0,360)
				Sparks2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4,2),NumberSequenceKeypoint.new(1,0,0)})
				Sparks2.Speed = NumberRange.new(20,150)
				Sparks2.SpreadAngle = Vector2.new(360, 360)
				Sparks2.Texture = [[rbxassetid://17547405831]]
				Sparks2.Name = [[Sparks2]]
				Sparks2.Parent = BlackFlashHit
				Blast.Brightness = 10
				Blast.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Blast.EmissionDirection = Enum.NormalId.Front
				Blast.Enabled = false
				Blast.Lifetime = NumberRange.new(0.05,0.05)
				Blast.Orientation = Enum.ParticleOrientation.VelocityParallel
				Blast.Rate = 200
				Blast:Emit(20)
				Blast.Rotation = NumberRange.new(-360,360)
				Blast.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,62.2016,0)})
				Blast.Speed = NumberRange.new(0.1,0.1)
				Blast.SpreadAngle = Vector2.new(360, 360)
				Blast.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,2.5125,0)})
				Blast.Texture = [[rbxassetid://7994629137]]
				Blast.Name = [[Blast]]
				Blast.Parent = BlackFlashHit
				Lightning.Brightness = 5
				Lightning.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Lightning.Drag = 3
				Lightning.Enabled = false
				Lightning.FlipbookFramerate = NumberRange.new(20,40)
				Lightning.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
				Lightning.FlipbookStartRandom = true
				Lightning.Lifetime = NumberRange.new(0.2,1.3)
				Lightning.LockedToPart = true
				Lightning.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Lightning.Rate = 100
				Lightning:Emit(20)
				Lightning.Rotation = NumberRange.new(0,360)
				Lightning.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.033642,12.5435,11.3034),NumberSequenceKeypoint.new(0.075642,16.0988,11.5298),NumberSequenceKeypoint.new(0.109642,9.43785,12.5917),NumberSequenceKeypoint.new(0.177642,14.175,13.7364),NumberSequenceKeypoint.new(1,13.9192,13.4744)})
				Lightning.Speed = NumberRange.new(0.001,10)
				Lightning.SpreadAngle = Vector2.new(360, 360)
				Lightning.Texture = [[rbxassetid://14255829980]]
				Lightning.ZOffset = 2
				Lightning.Name = [[Lightning]]
				Lightning.Parent = BlackFlashHit
				Wind2.Brightness = 3
				Wind2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Wind2.Enabled = false
				Wind2.Lifetime = NumberRange.new(0.1,0.1)
				Wind2.LightEmission = 1
				Wind2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
				Wind2.Rate = 100
				Wind2:Emit(20)
				Wind2.Rotation = NumberRange.new(-360,360)
				Wind2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,80,0),NumberSequenceKeypoint.new(1,80,0)})
				Wind2.Speed = NumberRange.new(0.01,0.01)
				Wind2.SpreadAngle = Vector2.new(360, 360)
				Wind2.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,-3,0),NumberSequenceKeypoint.new(1,0,0)})
				Wind2.Texture = [[rbxassetid://1053548563]]
				Wind2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
				Wind2.Name = [[Wind2]]
				Wind2.Parent = BlackFlashHit
				Sparks.Brightness = 15
				Sparks.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0),0),ColorSequenceKeypoint.new(1,Color3.new(1,0,0),0)})
				Sparks.Drag = 7
				Sparks.EmissionDirection = Enum.NormalId.Front
				Sparks.Enabled = false
				Sparks.Lifetime = NumberRange.new(0.8,1.3)
				Sparks.Orientation = Enum.ParticleOrientation.VelocityParallel
				Sparks.Rate = 400
				Sparks:Emit(20)
				Sparks.Rotation = NumberRange.new(90,90)
				Sparks.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,4.02858,3.04993),NumberSequenceKeypoint.new(0.205642,1.84193,1.74011),NumberSequenceKeypoint.new(1,0,0)})
				Sparks.Speed = NumberRange.new(40,200)
				Sparks.SpreadAngle = Vector2.new(360, 360)
				Sparks.Squash = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(0.231642,5.1956,0),NumberSequenceKeypoint.new(0.32206,0.844828,0),NumberSequenceKeypoint.new(0.46806,4.5586,0),NumberSequenceKeypoint.new(0.49206,0.000789245,0),NumberSequenceKeypoint.new(0.51806,3.78691,0),NumberSequenceKeypoint.new(0.56206,1.97825,0),NumberSequenceKeypoint.new(0.64006,2.28498,0),NumberSequenceKeypoint.new(0.72006,0.104659,0),NumberSequenceKeypoint.new(1,-1.15485,0)})
				Sparks.Texture = [[rbxassetid://15407518755]]
				Sparks.Name = [[Sparks]]
				Sparks.Parent = BlackFlashHit
-- Define a pure white color sequence
local white = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), -- pure white
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))  -- consistent white
}
-- Set each cloned effect to use the white color sequence
local function makeParticlesWhite(effectClone)
    for _, child in ipairs(effectClone:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child.Color = white
            child:Emit(5) -- Emit particles as originally intended
        end
    end
end
-- Original code with only the color modified to white
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
wait(0)
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
makeParticlesWhite(collateral3)
 
    end
 
end
 
--[[END OF MOVE 1 ANIM]]
 
