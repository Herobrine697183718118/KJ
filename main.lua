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


--BACKPACK CLEAR
local Players = game:GetService("Players")

local function clearBackpack(player)
    if player and player:FindFirstChild("Backpack") then
        local backpack = player.Backpack
        for _, item in ipairs(backpack:GetChildren()) do
            if item:IsA("Tool") then
                item:Destroy()
            end
        end
    end
end

local player = Players.LocalPlayer
clearBackpack(player)



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

--KJ SPAWN
local function playAnimation()
    local player = game.Players.LocalPlayer
    repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
    local humanoid = player.Character.Humanoid
    local character = player.Character or player.CharacterAdded:Wait()
    
    local anim2 = Instance.new("Animation")
    anim2.AnimationId = "rbxassetid://17325160621"

    local playAnim2 = humanoid:LoadAnimation(anim2)
    playAnim2:Play()

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17325174223"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end

playAnimation()
if game.PlaceId == 10449761463 then
    wait(1.2)
    --KJ PHONE DROP
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local player = game.Players.LocalPlayer
    local resources = ReplicatedStorage:WaitForChild("Resources")
    local phoneModel = resources:FindFirstChild("PhonePhysicsTest")

    if phoneModel then
        local clonedModel = phoneModel:Clone()
        local character = player.Character or player.CharacterAdded:Wait()
        local RightArm = character:WaitForChild("Right Arm")
        clonedModel:SetPrimaryPartCFrame(RightArm.CFrame * CFrame.new(0, 0, -1))
        clonedModel.Parent = workspace
        wait(3)
        clonedModel:Destroy()
    end
end
--END OF KJ SPAWN


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

            local Sound5 = Instance.new("Sound")
            Sound5.Parent = character
            Sound5.SoundId = "rbxassetid://16945723339"
            Sound5.Volume = 1

            Sound4.Ended:Connect(function()
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
        local player = players.LocalPlayer
        local character = player.Character
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


--COLLATERAL RUIN CODE
local ToolName = "Collateral Ruin"
local CooldownLength = 24
local ToolSlot = "3"

local function ToolCode()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Collateral%20Ruin.lua"))()
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
        local player = players.LocalPlayer
        local character = player.Character
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
