
local Update = loadstring(game:HttpGet("https://raw.githubusercontent.com/zFor3st/Free-Librarys/refs/heads/main/Relz-UI/Source.lua"))()
if Update:LoadAnimation() then Update:StartLoad() end
if Update:LoadAnimation() then Update:Loaded() end

local Library = Update:Window({
    SubTitle = "Complete UI Example",
    Size = UDim2.new(0, 500, 0, 350),
    TabWidth = 120
})

local MainTab = Library:Tab("Main", "rbxassetid://10723407389")
MainTab:Seperator("Game Stats")

local GameTime = MainTab:Label("Game Time")
local FPS = MainTab:Label("FPS")
local Ping = MainTab:Label("Ping")

spawn(function()
	while true do
		task.wait(0.5)
		local t = math.floor(workspace.DistributedGameTime + 0.5)
		local h, m, s = math.floor(t/3600), math.floor(t/60)%60, t%60
		GameTime:Set(("[Time]: %02d:%02d:%02d"):format(h, m, s))
		FPS:Set("[FPS]: " .. math.floor(workspace:GetRealPhysicsFPS()))
		local p = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
		Ping:Set("[Ping]: " .. p)
	end
end)


MainTab:Seperator("Options")
local WeaponList = {"Sword", "Gun", "Melee"}
MainTab:Dropdown("Select Weapon", WeaponList, nil, function(v)
	Update:Notify("Selected: " .. v, 2)
end)

MainTab:Toggle("Enable Auto Farm", false, "Automatically farms enemies near you", function(state)
	print("[Auto Farm]:", state)
end)

MainTab:Slider("WalkSpeed", 16, 100, 16, function(speed)
	local char = game.Players.LocalPlayer.Character
	if char and char:FindFirstChild("Humanoid") then
		char.Humanoid.WalkSpeed = speed
	end
end)

MainTab:Button("Teleport to Spawn", function()
	local char = game.Players.LocalPlayer.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		char.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
		Update:Notify("Teleported!", 2)
	end
end)

MainTab:Button("Copy Discord", function()
	setclipboard("https://discord.gg/relzhub")
	Update:Notify("Discord link copied!", 2)
end)

local SettingsTab = Library:Tab("Settings", "rbxassetid://10734950020")
SettingsTab:Seperator("Settings")

SettingsTab:Toggle("Auto Save Settings", true, nil, function(value)
	getgenv().AutoSave = value
end)

SettingsTab:Toggle("Enable Load Animation", true, nil, function(value)
	getgenv().LoadAnim = value
end)

SettingsTab:Button("Reset Config", function()
	if isfolder("Relz Hub") then delfolder("Relz Hub") end
	Update:Notify("Config reset. Rejoin the game to apply.", 3)
end)


local KeybindTab = Library:Tab("Keybind", "rbxassetid://7743878857")
KeybindTab:Seperator("Visibility")

KeybindTab:Button("Toggle UI (Insert)", function()
	local gui = game:GetService("CoreGui"):FindFirstChild("RelzHub")
	if gui then gui.Enabled = not gui.Enabled end
end)

KeybindTab:Button("Send Test Notification", function()
	Update:Notify("This is a test notification.", 3)
end)
