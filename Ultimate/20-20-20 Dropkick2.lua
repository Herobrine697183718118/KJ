local player = game.Player.LocalPlaher
local Humanoid = Character:WaitForChild("Humanoid")

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
