game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
local player = game.Players.LocalPlayer
repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
local humanoid = player.Character.Humanoid

local anim1 = Instance.new("Animation")
anim1.AnimationId = "rbxassetid://16944265635"
local playAnim1 = humanoid:LoadAnimation(anim1)
anim1.AnimationId = "rbxassetid://0"

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://16944345619"
local playAnim2 = humanoid:LoadAnimation(anim2)
anim2.AnimationId = "rbxassetid://0"

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://16944636115"
sound.Parent = player.Character.HumanoidRootPart
sound.Volume = 1

local hitSound = Instance.new("Sound")
hitSound.SoundId = "rbxassetid://16944654440"
hitSound.Volume = 1

local hitSound2 = Instance.new("Sound")
hitSound2.SoundId = "rbxassetid://16944654157"
hitSound2.Volume = 1

local health = player.PlayerGui:WaitForChild("ScreenGui"):WaitForChild("MagicHealth"):WaitForChild("Health")
local bar = health:WaitForChild("Bar")

local maxBarWidth = 230
local Increase = math.random(10, 14)

local function updateBarSize()
    local currentWidth = bar.Size.X.Offset
    local newWidth = currentWidth + Increase
    if newWidth > maxBarWidth then
        newWidth = maxBarWidth
    end
    bar.Size = UDim2.new(0, newWidth, 0, 17)
end

local function applyDamageToNearestTarget()
    local closestTarget = nil
    local closestDistance = 5

    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance <= closestDistance then
                closestDistance = distance
                closestTarget = otherPlayer.Character
            end
        end
    end

    local dummy = game.Workspace.Live:FindFirstChild("Weakest Dummy")
    if dummy and dummy:FindFirstChild("HumanoidRootPart") then
        local distance = (player.Character.HumanoidRootPart.Position - dummy.HumanoidRootPart.Position).Magnitude
        if distance <= closestDistance then
            closestTarget = dummy
        end
    end

    if closestTarget then
        local humanoid = closestTarget:FindFirstChild("Humanoid")
        if humanoid then
            humanoid:TakeDamage(math.random(10, 14))

            local targetAnimator = humanoid:FindFirstChild("Animator")
            if targetAnimator then
                local hitAnim = Instance.new("Animation")
                hitAnim.AnimationId = "rbxassetid://10471478869"
                local playHitAnim = targetAnimator:LoadAnimation(hitAnim)
                playHitAnim:Play()

                hitSound.Parent = closestTarget.HumanoidRootPart
                hitSound2.Parent = closestTarget.HumanoidRootPart
                hitSound:Play()
                task.spawn(function()
                    wait(0.4)
                    hitSound2:Play()
                end)
                playAnim2:Play()
                updateBarSize()
                sound:Stop()
                return
            end
        end
    else
        if not playAnim1.IsPlaying then
            playAnim1:Play()
        end
    end

    if not sound.IsPlaying then
        sound:Play()
    end
end

applyDamageToNearestTarget()


local preservedNames = {
    "Summermap",
    "Camera",
    "Live",
    "Terrain",
    "Map",
    "Thrown",
    "Built",
    "KingCrab"
}

local function isPreserved(name)
    for _, preservedName in ipairs(preservedNames) do
        if name == preservedName then
            return true
        end
    end
    return false
end

for _, item in ipairs(workspace:GetChildren()) do
    if not isPreserved(item.Name) then
        item:Destroy()
    end
end

local terrain = workspace:FindFirstChild("Terrain")
if terrain then
    for _, child in ipairs(terrain:GetChildren()) do
        if child.Name ~= "Clouds" then
            child:Destroy()
        end
    end
end
