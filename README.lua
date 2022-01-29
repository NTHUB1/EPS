                                --V1--
--MENU                  
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Night Hub", "BloodTheme")

--MAINMENU
local Tab = Window:NewTab("MAIN MENU")
local Section = Tab:NewSection("SPEED HACK")
--SPEEDHACK
Section:NewButton("UES", "CLICK", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)
--JUMPHACK
local Section = Tab:NewSection("JUMPHACK")
Section:NewButton("UES", "CLICK", function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end)
--FLYHACK
local Section = Tab:NewSection("FLY")
Section:NewButton("UES", "CLICK", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnTop/RiceFeFly/main/Wind"))()
end)
--
local Section = Tab:NewSection("FAST ATTACK")

Section:NewButton("USE", "Click", function()
spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
        local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
        Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
        Combat.activeController.timeToNextAttack = 0
    end)
end) 
end)


spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end)
end) 
end)
end)













--TP
local Tab = Window:NewTab("PLAYERS")
local Section = Tab:NewSection("TEREPORT PLAYERP!")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end
local drop = Section:NewDropdown("Select Player!", "Click To Select", Plr, function(t)
   PlayerTP = t
end)
Section:NewButton("Click To TP", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewToggle("Auto Tp", "", function(t)
_G.TPPlayer = t
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewButton("Refresh Dropdown","Refresh Dropdown", function()
  drop:Refresh(Plr)
end)
--
local Section = Tab:NewSection("Remove Shift lock and press Shift+P")





















































--CREDIT
local Tab = Window:NewTab("CREDIT")
local Section = Tab:NewSection("Night Hub")
local Section = Tab:NewSection("Fly by Jam#0007")
--PRESS KEY
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F1, function()
	Library:ToggleUI()
end)
