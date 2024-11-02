local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local Humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:FindFirstChild("Torso")
local workspace = game:GetService("Workspace")

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://17354976067"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()

local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17356346310"
    sound.Parent = character
    sound.Volume = 1
    sound:Play()
end

playSound()
