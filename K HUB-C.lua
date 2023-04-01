wait(1)
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

--Values
_G.SpamAbility = false
_G.WhereToTeleport = "Lobby"

function K_HUB()
	local Window = OrionLib:MakeWindow({Name = "K HUB - Trollge Incident Fights Reborn", HidePremium = true, IntoText = "K HUB" ,SaveConfig = true, ConfigFolder = "K HUB"})
	--Functions
	local function SpamAbility()
		while _G.SpamAbility == true do
			if char:FindFirstChildOfClass("Tool") then
				local Tool = char:FindFirstChildOfClass("Tool")
				local Abilities = 0
				for i,v in pairs(Tool:GetChildren()) do
					if v:IsA("RemoteEvent") then
						Abilities += 1
					end
				end
				if Abilities == not 0 then
					for i,v in pairs(Tool:GetChildren()) do
						if v:IsA("RemoteEvent") then
							v:FireServer()
						end
					end
				end
			end
		end
	end

	
	--Tabs
	local AutoFarm = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://11882595197",
	PremiumOnly = false
	})

	local Spam = Window:MakeTab({
	Name = "Spam",
	Icon = "rbxassetid://6862780932",
	PremiumOnly = false
	})

	local Fun = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://7907329019",
	PremiumOnly = false
	})

	local VIP = Window:MakeTab({
	Name = "VIP",
	Icon = "rbxassetid://1650853913",
	PremiumOnly = false
	})

	--Buttons/Toogles
	AutoFarm:AddToggle({
	Name = "Cheez em'",
	Default = false,
	Callback = function(Value)
		script.AutoFarm["Cheez em'"].cheezscript.Event:Fire(Value)
	end    
	})

	Spam:AddToggle({
	Name = "Spam Abilities",
	Default = false,
	Callback = function(Value)
		_G.SpamAbility = Value
		SpamAbility()
	end
	})

	Fun:AddButton({
	Name = "Fly",
	Callback = function()
		if not plr.PlayerGui:FindFirstChild("Fly") then
      		local yes = script.Fly:Clone()
			yes.Parent = plr.PlayerGui
			yes.Enabled = true
		end
  	end    
	})

	--VIP VIP Chooses / Dropdowns VIP VIP
	VIP:AddDropdown({
	Name = "Teleport",
	Default = "Lobby",
	Options = {"Lobby", "Trollge Shelter", "Stone", "Tem's shop", "Secret place", "Troll gems shop", "Chess", "MrBist","A [hole]","RedRoom","Yippe"},
	Callback = function(Value)
		_G.WhereToTeleport = Value
	end    
	})
	VIP:AddButton({
	Name = "Teleport",
	Callback = function()
		if _G.WhereToTeleport == "Lobby" then
			char:PivotTo(CFrame.new(21.7846508,307.3156,-0.0205644164,0,0.999788463,0,1,-0,-0.999788582,0,-0.0205644146))
		elseif _G.WhereToTeleport == "Chess" then
			char:PivotTo(-269.22818,58,319,-1,0,0,0,1,-0,0,-1)
		elseif _G.WhereToTeleport == "Trollge Shelter" then
			char:PivotTo(-269.22818,58,319,-1,0,0,0,1,-0,0,-1)
		elseif _G.WhereToTeleport == "Stone" then
			char:PivotTo(-128,19,-125,-0.5,-6.2e-08,-0.8,-5e-09,1,-7e-08,0.8,-3e-08,-0.54)
		elseif _G.WhereToTeleport == "Leaderstats" then
			char:PivotTo(-84,18,-98,0.,-4e-10,0.8,4.8e-08,1,-2.8e-08,-0.8,5.6e-08,-0.007)
		elseif _G.WhereToTeleport == "Tem's shop" then
			char:PivotTo(24.8,7.3,-23,-0,-3e-08,-1,5e-08,1,-3e-08,1,-5e-08,-0)
		elseif _G.WhereToTeleport == "Troll gem shop" then
			char:PivotTo(-269.22818,58,319,-1,0,0,0,1,-0,0,-1)
		end
  	end
	})

	OrionLib:Init()
end

if game.GameId == 4356309501 then
	K_HUB()
else
	script:Destroy()
	return
end
