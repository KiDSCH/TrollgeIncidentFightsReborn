--[[

		K HUB™
		KiDSCH
		Version 2.6.9

]]


-- Instances

local KHUB = Instance.new("ScreenGui")
local YE = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local iii = Instance.new("TextLabel")

-- Properties

KHUB.Name = "KHUB"
KHUB.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

YE.Name = "YE"
YE.Parent = KHUB
YE.BackgroundColor3 = Color3.new(1, 1, 1)
YE.Position = UDim2.new(0.899068296, 0, 0.449725777, 0)
YE.Size = UDim2.new(0.100000001, 0, 0.100000001, 0)

UICorner.Parent = YE

TextButton.Parent = YE
TextButton.BackgroundColor3 = Color3.new(0, 1, 0)
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "ENABLE"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

UICorner_2.Parent = TextButton

iii.Name = "iii"
iii.Parent = YE
iii.BackgroundColor3 = Color3.new(0.560784, 0, 0)
iii.Position = UDim2.new(-2.28260875, 0, -1.00732601, 0)
iii.Size = UDim2.new(3.27639747, 0, 1, 0)
iii.Visible = false
iii.Font = Enum.Font.SourceSans
iii.Text = "Equip tool"
iii.TextColor3 = Color3.new(0, 0, 0)
iii.TextScaled = true
iii.TextSize = 14
iii.TextWrapped = true

-- Scripts

local function RDAJ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local green = Color3.fromRGB(0,255,0)
	local red = Color3.fromRGB(255,0,0)
	script:SetAttribute("Cheese",false)
	function yes()
		if script:GetAttribute("Cheese") == false then
			script:SetAttribute("Cheese",true)
			script.Parent.Parent.cheezscript.Event:Fire(true)
			script.Parent.Text = "Disable"
			script.Parent.BackgroundColor3 = red
		else
			script:SetAttribute("Cheese",false)
			script.Parent.Parent.cheezscript.Event:Fire(false)
			script.Parent.Text = "Enable"
			script.Parent.BackgroundColor3 = green
		end
	end
	script.Parent.MouseButton1Click:Connect(yes)
	script.Parent.TouchTap:Connect(yes)
end
coroutine.wrap(RDAJ_fake_script)()
local function RLXVTR_fake_script() -- YE.cheezscript 
	local script = Instance.new('LocalScript', YE)

	local sasa = false
	script.Event.Event:Connect(function(asas)
		if asas == true then
			sasa = true
		else
			sasa = false
		end
	end)
	local plr = game:GetService("Players").LocalPlayer
	local char = plr.Character
	
	while wait(0.1) do
		if sasa == true then
			if char:FindFirstChildOfClass("Tool") then
				for i,v in pairs(workspace:GetChildren()) do
					if v:IsA("Model") then
						if v:FindFirstChildOfClass("Humanoid") then
							if char:FindFirstChildOfClass("Tool") then
								char:FindFirstChildOfClass("Tool"):Activate()
								char:PivotTo(v.PrimaryPart.CFrame)
								wait(1)
							else
								script.idiot:Fire()
							end
						end
					end
				end
			else
				script.idiot:Fire()
			end
		end
	end
end
coroutine.wrap(RLXVTR_fake_script)()
