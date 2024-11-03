local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
debounce = false
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16945573694"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
local Sound = Instance.new("Sound")
Sound.Parent = character
Sound.SoundId = "rbxassetid://16945495411"
Sound.Playing = true
spawn(function()
    wait(1)
    debounce = true
end)
playAnim:Play()
playAnim:AdjustSpeed(0.3)
wait(0.3)
playAnim:AdjustSpeed(1)

animationPlayed = false
soundPlayed = false

local function playHitSound()
    soundPlayed = true
    
    local Sound2 = Instance.new("Sound")
    Sound2.Parent = character
    Sound2.SoundId = "rbxassetid://16945517708"
    Sound2.Volume = 2
    Sound2:Play()
    
    local Sound3 = Instance.new("Sound")
    Sound3.Parent = character
    Sound3.SoundId = "rbxassetid://16945593216"
    Sound3.Volume = 2
    Sound3:Play()
    
    local Sound4 = Instance.new("Sound")
    Sound4.Parent = character
    Sound4.SoundId = "rbxassetid://16945691441"
    Sound4.Volume = 2
    Sound4:Play()

    task.spawn(function()
            wait(5.5)
            local Sound5 = Instance.new("Sound")
            Sound5.Parent = character
            Sound5.SoundId = "rbxassetid://16945723339"
            Sound5.Volume = 1
            Sound5:Play()
    end)
end

local function Increase()
    local player = game.Players.LocalPlayer
    local health = player.PlayerGui:WaitForChild("ScreenGui"):WaitForChild("MagicHealth"):WaitForChild("Health")
    local bar = health:WaitForChild("Bar")

    local maxBarWidth = 230

    local function updateBarSize()
        local currentWidth = bar.Size.X.Offset
        local newWidth = currentWidth + 26

        if newWidth > maxBarWidth then
            newWidth = maxBarWidth
        end

        bar.Size = UDim2.new(0, newWidth, 0, 17)
    end

    updateBarSize()
end

local function playHitAnimation(target)
    animationPlayed = true

    anim.AnimationId = "rbxassetid://16945550029"
    local playAnim = humanoid:LoadAnimation(anim)
    anim.AnimationId = "rbxassetid://0"
    playAnim:Play()

    character.Humanoid.WalkSpeed = 0
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    task.spawn(function()
            humanoid.AutoRotate = false
            local startTime = tick()

            while tick() - startTime < 6 do
                humanoid.AutoRotate = false
                task.wait()
         end
    end)
    character:WaitForChild("HumanoidRootPart").CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)

    local targetHumanoid = target:WaitForChild("Humanoid")
    local targetAnimator = targetHumanoid:WaitForChild("Animator")
    local targetAnim = Instance.new("Animation")
    targetAnim.AnimationId = "rbxassetid://16945557433"
    local targetAnimationTrack = targetAnimator:LoadAnimation(targetAnim)
    targetAnimationTrack:Play()

    wait(1)
    
    local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
    local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
    local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("barrage")
    local speedlinesandstuffClone = speedlinesandstuffPart:Clone()
    local desiredCFrame = CFrame.new(character["Left Arm"].Position)
    speedlinesandstuffClone.CFrame = desiredCFrame
    speedlinesandstuffClone.Parent = Workspace
    
    local function enableParticleEmitters(parent)
        for _, descendant in ipairs(parent:GetDescendants()) do
            if descendant:IsA("ParticleEmitter") then
                descendant.Enabled = true
            end
        end
    end
    
    spawn(function()
        wait(1)
        enableParticleEmitters(speedlinesandstuffClone)
    end)

    local camera = game.Workspace.CurrentCamera
    local TweenService = game:GetService("TweenService")
    local shakeDuration = 1
    local shakeMagnitude = 0.5

    task.spawn(function()
        wait(1)
        local originalCFrame = camera.CFrame
        local startTime = tick()

        while tick() - startTime < shakeDuration do
           local offsetX = (math.random() - 0.5) * shakeMagnitude * 2
           local offsetY = (math.random() - 0.5) * shakeMagnitude * 2
           local targetCFrame = originalCFrame * CFrame.new(offsetX, offsetY, 0)
           local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
           local tween = TweenService:Create(camera, tweenInfo, {CFrame = targetCFrame})
           tween:Play()
           wait(0.05)
        end

        camera.CFrame = originalCFrame
    end)
    
    local hit1 = ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hit1.Parent = character["Left Arm"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(30)
        end
    end

    wait(2)
    workspace.barrage:Destroy()

    local hit2 = ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hit2.Parent = character["Right Arm"]
    for _, child in ipairs(hit2:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(20)
        end
    end

    wait(1)

    local windEffect = ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
    windEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(windEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(10)
        end
    end

    wait(1)
    local shakeDuration = 0.5
    local shakeMagnitude = 0.2

    task.spawn(function()
        local originalCFrame = camera.CFrame
        local startTime = tick()

        while tick() - startTime < shakeDuration do
           local offsetX = (math.random() - 0.5) * shakeMagnitude * 2
           local offsetY = (math.random() - 0.5) * shakeMagnitude * 2
           local targetCFrame = originalCFrame * CFrame.new(offsetX, offsetY, 0)
           local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
           local tween = TweenService:Create(camera, tweenInfo, {CFrame = targetCFrame})
           tween:Play()
           wait(0.05)
        end

        camera.CFrame = originalCFrame
    end)

    local lastKickEffect = ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
    lastKickEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(lastKickEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(5)
        end
    end

    wait(5)
    debounce = false
    character.Humanoid.WalkSpeed = 16
    character.Humanoid.AutoRotate = true 
end

local proximityDetectionRadius = 6

local function detectNearbyTarget()
    local closestTarget = nil
    local closestDistance = proximityDetectionRadius

    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
            if distance <= closestDistance then
                closestTarget = p.Character
                closestDistance = distance
            end
        end
    end

    local dummy = game.Workspace.Live:FindFirstChild("Weakest Dummy")
    if dummy and dummy:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - dummy.HumanoidRootPart.Position).Magnitude
        if distance <= closestDistance then
            closestTarget = dummy
        end
    end

    return closestTarget
end

if true then
    local target = detectNearbyTarget()
    if target and not animationPlayed then
        playHitSound()
        playHitAnimation(target)
        Increase()
    end
    wait(0.1)
end
