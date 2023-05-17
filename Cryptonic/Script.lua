local library = loadstring(game:HttpGet("https://pastebin.com/raw/GcC9P2Je"))()

getgenv().IrisAd = true
local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

function RemovePart(name)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name:lower() == name then
                v:Destroy()
            end
        end
    end
end

function Alert(title, content, image, dura)
Notification.Notify(title, content, "rbxassetid://" .. tostring(image), {
    Duration = dura,
    
    TitleSettings = {
        TextXAlignment = Enum.TextXAlignment.Center,
        Font = Enum.Font.SourceSansSemibold,
    },


    GradientSettings = {
        GradientEnabled = false,
        SolidColorEnabled = true,
        SolidColor = Color3.fromRGB(124, 83, 240),
        Retract = true
    }
})
end

function CollidePart(name)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name:lower() == name then
                v.CanCollide = false
            end
        end
    end
end

function TP(name)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name:lower() == name then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame)
             else
                Alert("Sword Teleport","waiting for the cutlass to appear","7258714296",5)
            end
        end
    end
end

local Main = library.window("Cursed Island")

local Disaster = {}
local Deleted = {}
local Collider = {}

Main.button("Cheat round",function()
      RemovePart("center")
      RemovePart("water")
      RemovePart("volcano")
      RemovePart("krakenmast")
      RemovePart("portal")
      RemovePart("vortex")
      RemovePart("tornadopart")
      RemovePart("ice")
      RemovePart("barrel")
      RemovePart("meteor")
      RemovePart("meteorite")
      RemovePart("pivot")
      RemovePart("body") -- bee body 
      RemovePart("section")
      RemovePart("elastic")
      RemovePart("glass")
      RemovePart("hole") -- UFO hole
      RemovePart("abductor") -- UFO hole 2
      RemovePart("center")
      CollidePart("prisonsides")
end)

Main.button("Teleport to the sword",function()
TP("cutlass")
end)
