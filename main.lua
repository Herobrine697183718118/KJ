-- Function to reset the character
local function resetCharacter()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character and character:FindFirstChild("Humanoid")

    if humanoid then
        humanoid:TakeDamage(humanoid.Health)  -- Applies damage equal to current health, effectively resetting the character
    end
end

-- Reset the character
resetCharacter()
wait(5.6)


if game.PlaceId == 10449761463 then
    -- KJ SPAWN
    local function playAnimation()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        
        -- Play animation
        local anim2 = Instance.new("Animation")
        anim2.AnimationId = "rbxassetid://17325160621"
        local playAnim2 = humanoid:LoadAnimation(anim2)
        playAnim2:Play()

        -- Play sound effect
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://17325174223"
        sound.Parent = character
        sound.Volume = 3
        sound:Play()

        -- Wait before dropping the phone
        wait(1.2)

        -- KJ PHONE DROP
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local resources = ReplicatedStorage:WaitForChild("Resources")
        local phoneModel = resources:FindFirstChild("PhonePhysicsTest")

        if phoneModel then
            local clonedModel = phoneModel:Clone()
            local RightArm = character:WaitForChild("Right Arm")
            clonedModel:SetPrimaryPartCFrame(RightArm.CFrame * CFrame.new(0, 0, -2))
            clonedModel.Parent = workspace
            
            -- Wait, then destroy the phone model
            task.spawn(function()
                wait(2)
                clonedModel:Destroy()
            end)
        end
    end

    -- Call the playAnimation function
    playAnimation()
end
-- END OF KJ SPAWN


--BACKPACK CLEAR
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local function clearBackpack()
    -- Loops through each tool in the backpack and destroys it
    for i = #backpack:GetChildren(), 1, -1 do
        backpack:GetChildren()[i]:Destroy()
    end
end

clearBackpack()

--KJWallCombo & KJ M1
if game.PlaceId == 10449761463 then
    local url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ.lua"
    local scriptContent = game:HttpGet(url, true) -- Fetch the script
    loadstring(scriptContent)() -- Execute the script
end

--RAVAGE CODE
if game.PlaceId == 12360882630 then
    local tool = Instance.new("Tool")
    tool.Name = "Ravage"
    tool.RequiresHandle = false
    tool.CanBeDropped = true

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = game.Players.LocalPlayer

    tool.Activated:Connect(function()
        repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
        local humanoid = player.Character.Humanoid
        local character = player.Character
        local debounce = false
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://16945573694"
        local playAnim = humanoid:LoadAnimation(anim)
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

        local animationPlayed = false
        local soundPlayed = false

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

        local function playHitAnimation(target)
            animationPlayed = true
                
            character.Humanoid.WalkSpeed = 0
            character.Humanoid.AutoRotate = false
            anim.AnimationId = "rbxassetid://16945550029"
            local playAnim = humanoid:LoadAnimation(anim)
            playAnim:Play()
            character:WaitForChild("HumanoidRootPart").CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)

            local targetHumanoid = target:WaitForChild("Humanoid")
            local targetAnimator = targetHumanoid:WaitForChild("Animator")
            local targetAnim = Instance.new("Animation")
            targetAnim.AnimationId = "rbxassetid://16945557433"
            local targetAnimationTrack = targetAnimator:LoadAnimation(targetAnim)
            targetAnimationTrack:Play()

            wait(1)
            character.Humanoid.WalkSpeed = 16
            character.Humanoid.AutoRotate = true 
        end

        local proximityDetectionRadius = 5

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

        local target = detectNearbyTarget()
        if target and not animationPlayed then
            playHitSound()
            playHitAnimation(target)
        end
        wait(0.1)
    end)

    tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")

else
    local ToolName = "Ravage"
    local CooldownLength = 18
    local ToolSlot = "1"

    local function ToolCode()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Ravage.lua"))()
        delay(0, function() end)
    end

    local player = game.Players.LocalPlayer
    local tool = Instance.new("Tool")
    tool.Name = ToolName
    tool.RequiresHandle = false
    tool.Parent = player.Backpack

    local debounce = false

    tool.Equipped:Connect(function()
        if not debounce then
            debounce = true

            local players = game:GetService("Players")
            local character = players.LocalPlayer.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:UnequipTools()
            end

            delay(CooldownLength, function()
                debounce = false
            end)

            local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
            local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()
            cooldown.Parent = hotbar

            local tweenService = game:GetService("TweenService")
            local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
            local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

            local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
            tween:Play()

            tween.Completed:Connect(function()
                cooldown:Destroy()
            end)

            delay(0, function()
                ToolCode()
            end)
        end
    end)
end



--SWIFT SWEEP CODE
if game.PlaceId == 12360882630 then
    local tool = Instance.new("Tool")
    tool.Name = "Swift Sweep"
    tool.RequiresHandle = false
    tool.CanBeDropped = true
    tool.Parent = game.Players.LocalPlayer.Backpack

    local player = game.Players.LocalPlayer

    tool.Activated:Connect(function()
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = 10

        -- Play the main animation
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

        -- Function to apply damage to the nearest target within range
        local function applyDamageToNearestTarget()
            local closestTarget = nil
            local closestDistance = 5

            for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
                if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude

                    if distance <= closestDistance then
                        closestDistance = distance
                        closestTarget = otherPlayer.Character
                    end
                end
            end

            if closestTarget then
                local targetHumanoid = closestTarget:FindFirstChild("Humanoid")
                if targetHumanoid then
                    -- Apply random damage
                    targetHumanoid:TakeDamage(math.random(10, 14))

                    -- Play hit animation on target
                    local targetAnimator = targetHumanoid:FindFirstChild("Animator")
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
    end)
else
    local ToolName = "Swift Sweep"
    local CooldownLength = 16
    local ToolSlot = "2"

    local function ToolCode()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Swift%20Sweep.lua"))()
        delay(0, function() end)
    end

    local player = game.Players.LocalPlayer
    local tool = Instance.new("Tool")
    tool.Name = ToolName
    tool.RequiresHandle = false
    tool.Parent = player.Backpack

    local debounce = false

    tool.Equipped:Connect(function()
        if not debounce then
            debounce = true

            local players = game:GetService("Players")
            local character = players.LocalPlayer.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:UnequipTools()
            end

            delay(CooldownLength, function()
                debounce = false
            end)

            local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
            local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()
            cooldown.Parent = hotbar

            local tweenService = game:GetService("TweenService")
            local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
            local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

            local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
            tween:Play()

            tween.Completed:Connect(function()
                cooldown:Destroy()
            end)

            delay(0, function()
                ToolCode()
            end)
        end
    end)
end

--COLLATERAL RUIN CODE
if game.PlaceId == 12360882630 then
    local tool = Instance.new("Tool")
    tool.Name = "Collateral Ruin"
    tool.RequiresHandle = false
    tool.Parent = game.Players.LocalPlayer.Backpack

    local player = game.Players.LocalPlayer
    repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
    local humanoid = player.Character.Humanoid

    local function applyDamageToNearestTarget()
        local closestTarget = nil
        local closestDistance = 10

        for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
            if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local distance = (player.Character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude

                if distance <= closestDistance then
                    closestDistance = distance
                    closestTarget = otherPlayer.Character
                end
            end
        end

        if closestTarget then
            local humanoid = closestTarget:FindFirstChild("Humanoid")
            if humanoid then
                humanoid:TakeDamage(15)
            end
        end
    end

    tool.Activated:Connect(function()
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://17325254223"
        local playAnim = humanoid:LoadAnimation(anim)
        playAnim:Play()

        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://17325303798"
        sound.Parent = player.Character
        sound:Play()

        wait(1)

        applyDamageToNearestTarget()
    end)
else
    local ToolName = "Collateral Ruin"
    local CooldownLength = 24
    local ToolSlot = "3"

    local function ToolCode()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Collateral%20Ruin.lua"))()
    end

    local player = game.Players.LocalPlayer
    local tool = Instance.new("Tool")
    tool.Name = ToolName
    tool.RequiresHandle = false
    tool.Parent = player.Backpack

    local debounce = false

    tool.Activated:Connect(function()
        if not debounce then
            debounce = true

            local character = player.Character
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:UnequipTools()
                end
            end

            local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar:FindFirstChild(ToolSlot)
            local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()

            if hotbar then
                cooldown.Parent = hotbar
            end

            local tweenService = game:GetService("TweenService")
            local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
            local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}
            local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)

            tween:Play()
            tween.Completed:Connect(function()
                cooldown:Destroy()
                debounce = false
            end)

            ToolCode()
        end
    end)
end




local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local Tool = Instance.new("Tool")
Tool.Name = "Awakening"
Tool.RequiresHandle = false
Tool.Parent = player.Backpack

local function loadAndExecuteScript(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
end

Tool.Activated:Connect(function()
    local url
    if humanoid.MoveDirection.Magnitude > 0 then
        url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Awakenings/Awakening_1.lua"
    else
        url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Awakenings/Awakening.lua"
    end
    loadAndExecuteScript(url)
end)


-- KJ Message Notification
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Character Based on KJ's Final Ride & KJ Kills Day Credits to Kilojoule & Stealth",
    Duration = 10
})

if game.PlaceId == 10449761463 then
    -- ULTIMATE TEXT
    local plr = game.Players.LocalPlayer
    local gui = plr.PlayerGui
    local ulttext = gui.ScreenGui.MagicHealth.TextLabel
    ulttext.Text = "20 SERIES"
end
