local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:FindFirstChild("Torso")
local workspace = game:GetService("Workspace")


--START OF FIVESEASONS JUMPFX
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:FindFirstChild("Torso")
local replicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")

task.spawn(function()
    wait(1.3)

    local resourcesFolder = replicatedStorage:FindFirstChild("Resources")
    if not resourcesFolder then return end

    local fiveSeasonsFX = resourcesFolder:FindFirstChild("FiveSeasonsFX")
    if not fiveSeasonsFX then return end

    local jumpFXModel = fiveSeasonsFX:FindFirstChild("JumpFX")
    if not jumpFXModel then return end

    local jumpFXPart = jumpFXModel:FindFirstChild("JumpFX")
    if not jumpFXPart then return end

    local clonedJumpFX = jumpFXPart:Clone()
    clonedJumpFX.Parent = workspace

    local function emitParticles(instance)
        for _, child in ipairs(instance:GetDescendants()) do
            if child:IsA("ParticleEmitter") then
                child.Enabled = true
                child:Emit(1)
                child.Enabled = false
            end
        end
    end

    local function positionOnFloor(part)
        if torso then
            local torsoPosition = torso.Position
            local rayOrigin = torsoPosition + Vector3.new(0, 4, 0)
            local rayDirection = Vector3.new(0, -20, 0)
            local raycastResult = workspace:Raycast(rayOrigin, rayDirection)

            if raycastResult then
                part.Position = raycastResult.Position - Vector3.new(0, 0.9, 0)
            end
        end
    end

    emitParticles(clonedJumpFX)
    positionOnFloor(clonedJumpFX)
end)
--END OF FIVE SEASONS JUMPFX


--FIVE SEASONS ANIMATION START
wait(0.2)
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://18462892217"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

--START SOUND
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460863844"
    sound.Parent = character
    sound.Volume = 2
    sound:Play()
end

playSound()

--KJ FIVE SEASONS MUSIC VARIANT 1
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460952794"
    sound.Parent = character
    sound.Volume = 0.8
    sound:Play()
end

playSound() 


local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local replicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")

task.spawn(function()
    wait(1.2)
    
    local function createJumpMeshes()
        local fiveSeasonsFX = replicatedStorage:WaitForChild("Resources"):WaitForChild("FiveSeasonsFX"):WaitForChild("JumpMeshes")
        local jumpMeshes = fiveSeasonsFX:Clone()
        jumpMeshes.Parent = workspace
        jumpMeshes:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, -10, 0))

        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
        bodyVelocity.P = 1250
        bodyVelocity.Velocity = Vector3.new(0, 50, 0)
        bodyVelocity.Parent = jumpMeshes.PrimaryPart

        for _, child in ipairs(jumpMeshes:GetDescendants()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(50)
            elseif child:IsA("Sound") then
                child:Play()
            end
        end

        task.spawn(function()
            wait(2.3)
            jumpMeshes:Destroy()
        end)
    end

    createJumpMeshes()
end)


--KJ TALK
wait(1.4)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460893321"
    sound.Parent = character
    sound.Volume = 1
    sound:Play()
end

playSound()

--START VFX
wait(2.6)
-- First burst of effects on the Left Arm
local armBurst1 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
armBurst1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armBurst2 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
armBurst2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armFX1 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
armFX1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armFX1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

wait(2.1)

-- Second burst of effects on the Left Arm
local armBurst3 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
armBurst3.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armBurst4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
armBurst4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst4:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armFX2 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
armFX2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armFX2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

-- Eye effect on the Head
local eyeEmit = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].EyeEmit:Clone()
eyeEmit.Parent = game.Players.LocalPlayer.Character["Head"]
for _, child in ipairs(eyeEmit:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(45)
    end
end

--KJ FIVESEASONS TPTHING SOUND
wait(1.3)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18461671633"
    sound.Parent = character
    sound.Volume = 4
    sound:Play()
end

playSound()

wait(2.7)
-- Destroy the second set of effects
armBurst1:Destroy()
armBurst2:Destroy()
armFX1:Destroy()
armBurst3:Destroy()
armBurst4:Destroy()
armFX2:Destroy()

wait(0.1)
-- FIVE SEASONS FINISH & EXPLOSION
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.PlatformStand = true

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local ActivateAttack = Instance.new("TextButton")
ActivateAttack.Size = UDim2.new(0, 150, 0, 150)
ActivateAttack.Position = UDim2.new(0.5, -50, 0.5, -50)
ActivateAttack.BackgroundTransparency = 1
ActivateAttack.Text = ""
ActivateAttack.Parent = screenGui

--CLONE START
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local fiveSeasonsFX = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("FiveSeasonsFX")
local fxUiFolder = fiveSeasonsFX:WaitForChild("FXUi"):Clone()

fxUiFolder.Parent = playerGui
--CLONE ENDED

--DESTROY CLONE FUNCTION
local function destroyFXUiFolder()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    
    local fxUiFolder = playerGui:FindFirstChild("FXUi")
    if fxUiFolder then
        fxUiFolder:Destroy()
    end
end
--DESTROY CLONE FUNCTION END

local uiCornerButton = Instance.new("UICorner")
uiCornerButton.CornerRadius = UDim.new(0, 50)
uiCornerButton.Parent = fiveSeasonsButton

local playTriggered = false

local function playEffects()
    if not playTriggered then
        playTriggered = true
        
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://18462894593" 
        local playAnim = humanoid:LoadAnimation(anim) 
        anim.AnimationId = "rbxassetid://0" 
        playAnim:Play() 

        local function playSound1()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://18461820786"
            sound.Parent = character
            sound.Volume = 2
            sound:Play()
        end

        playSound1()
        wait(1.9)

        local function playSound2()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://18461821277"
            sound.Parent = character
            sound.Volume = 2
            sound:Play()
        end
        
        playSound2()
        wait(1.4)

        local function playSound3()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://18462018744"
            sound.Parent = character
            sound.Volume = 2
            sound:Play()
        end
        
        playSound3()

        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local RS = game.ReplicatedStorage
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local humanoid = LocalPlayer.Character:WaitForChild("Humanoid")

        task.spawn(function()
            local fistModel = FiveEffects.FistsModelMirrored:Clone()
            fistModel.Parent = workspace

            if #fistModel:GetChildren() == 0 then
                return
            end

            if not fistModel.PrimaryPart then
                fistModel.PrimaryPart = fistModel:GetChildren()[1]
            end

            if not fistModel.PrimaryPart then
                return
            end

            local skyHeight = 200
            fistModel:SetPrimaryPartCFrame(LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, skyHeight, 0))

            for i = 1, 5 do
                wait()
                fistModel:SetPrimaryPartCFrame(fistModel.PrimaryPart.CFrame + Vector3.new(0, -5, 0))
            end
            for i = 1, 75 do
                wait()
                fistModel:SetPrimaryPartCFrame(fistModel.PrimaryPart.CFrame + Vector3.new(0, -0.5, 0))
            end
            for i = 1, 5 do
                wait()
                fistModel:SetPrimaryPartCFrame(fistModel.PrimaryPart.CFrame + Vector3.new(0, -40, 0))
            end

            fistModel:Destroy()
        end)

        wait(2.4)
        local function playSound4()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://18462312002"
            sound.Parent = character
            sound.Volume = 2
            sound:Play()
        end
        
        playSound4()
        wait(1.6)

        local function playSound5()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://18462330981"
            sound.Parent = character
            sound.Volume = 2
            sound:Play()
        end
        
        playSound5()

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local workspace = game:GetService("Workspace")

        task.spawn(function()
            wait(0.1)
            local resourcesFolder = replicatedStorage:FindFirstChild("Resources")
            if not resourcesFolder then return end

            local fiveSeasonsFX = resourcesFolder:FindFirstChild("FiveSeasonsFX")
            if not fiveSeasonsFX then return end

            local finalExplosionModel = fiveSeasonsFX:FindFirstChild("FinalExplosion")
            if not finalExplosionModel then return end
            
            local clonedFinalExplosion = finalExplosionModel:Clone()
            clonedFinalExplosion.Parent = workspace
            clonedFinalExplosion:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, 0, 0))

            local function emitParticles(instance)
                for _, child in ipairs(instance:GetDescendants()) do
                    if child:IsA("ParticleEmitter") then
                        child.Enabled = true
                        child:Emit(1)
                        child.Enabled = false
                    end
                end
            end
            
            emitParticles(clonedFinalExplosion)
        end)
    end
end

ActivateAttack.MouseButton1Click:Connect(function()
    playEffects()
    destroyFXUiFolder()
    screenGui:Destroy()
end)

wait(3)
if not playTriggered then
    screenGui:Destroy()
    destroyFXUiFolder()
    playEffects()
end
 
