  if game:GetService("CoreGui"):FindFirstChild("Best Xem Chùa") then 
game:GetService("CoreGui"):FindFirstChild("Best Xem Chùa"):Destroy()
end


local LocalPlayer = game:GetService("Players").LocalPlayer
local VirtualUser = game:GetService('VirtualUser')
function chichdiem(CFgo) local Distance = (CFgo.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude local tween_s = game:service"TweenService"
  local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/360, Enum.EasingStyle.Linear)
   if Distance < 50 then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFgo    end
   local tween, err = pcall(function()  tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
    tween:Play()  end) end
local placeId = game.PlaceId if placeId == 2753915549 then OldWorld = true elseif placeId == 4442272183 then NewWorld = true elseif placeId == 7449423635 then ThreeWorld = true BF = true end
--loading game buoi
 if not game:IsLoaded() then   
repeat game.Loaded:wait(0.2)  wait(10)
until game:IsLoaded() 
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Players.LocalPlayer.Character
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == false
end
-----
-- Function
function InfAb()
        if getgenv().InfAbility then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                local inf = Instance.new("ParticleEmitter")
                inf.Acceleration = Vector3.new(0,0,0)
                inf.Archivable = true
                inf.Drag = 20
                inf.EmissionDirection = Enum.NormalId.Top
                inf.Enabled = true
                inf.Lifetime = NumberRange.new(0,0)
                inf.LightInfluence = 0
                inf.LockedToPart = true
                inf.Name = "Agility"
                inf.Rate = 500
                local numberKeypoints2 = {
                    NumberSequenceKeypoint.new(0, 0);
                    NumberSequenceKeypoint.new(1, 4); 
                }
                inf.Size = NumberSequence.new(numberKeypoints2)
                inf.RotSpeed = NumberRange.new(9999, 99999)
                inf.Rotation = NumberRange.new(0, 0)
                inf.Speed = NumberRange.new(30, 30)
                inf.SpreadAngle = Vector2.new(0,0,0,0)
                inf.Texture = ""
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        else
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
            end
        end
    end
    
    local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
function UpdateEspPlayer()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if getgenv().ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
    
    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if getgenv().IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function UpdateChestEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if getgenv().ChestESP then
                        if string.find(v.Name,"Chest") then
                            if not v:FindFirstChild('NameEsp'..Number) then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'..Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "GothamBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        if v.Name == "Chest3" then
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
                end
            end)
        end
    end
    
    function UpdateBfEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if getgenv().DevilFruitESP then
                    if string.find(v.Name, "Fruit") then   
                        if not v.Handle:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v.Handle)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        else
                            v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp'..Number) then
                        v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                end
            end)
        end
    end
    
    function UpdateFlowerEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if getgenv().FlowerESP then 
                        if not v:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then 
                            name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                    else
                        if v:FindFirstChild('NameEsp'..Number) then
                            v:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                    end
                end   
            end)
        end
    end
    
function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
function fly()
local mouse=game.Players.LocalPlayer:GetMouse''
		localplayer=game.Players.LocalPlayer
		game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
		local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
		local speedSET=25
		local keys={a=false,d=false,w=false,s=false}
		local e1
		local e2
		local function start()
			local pos = Instance.new("BodyPosition",torso)
			local gyro = Instance.new("BodyGyro",torso)
			pos.Name="EPIXPOS"
			pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			pos.position = torso.Position
			gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			gyro.cframe = torso.CFrame
			repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.cframe - gyro.cframe.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
					speed=1
				end
				if keys.w then
					new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+speedSET
				end
				if keys.s then
					new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+speedSET
				end
				if keys.d then
					new = new * CFrame.new(speed,0,0)
					speed=speed+speedSET
				end
				if keys.a then
					new = new * CFrame.new(-speed,0,0)
					speed=speed+speedSET
				end
				if speed>speedSET then
					speed=speedSET
				end
					pos.position=new.p
				if keys.w then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
				else
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				end
			until not Fly
			if gyro then 
				gyro:Destroy() 
			end
			if pos then 
				pos:Destroy() 
			end
			flying=false
			localplayer.Character.Humanoid.PlatformStand=false
			speed=0
		end
		e1=mouse.KeyDown:connect(function(key)
			if not torso or not torso.Parent then 
				flying=false e1:disconnect() e2:disconnect() return 
			end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start()
	end
function racev4()
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = game:GetService("Players").LocalPlayer

local ArgsDash = {
	Character = game.Players.LocalPlayer.Character,
	CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
	Color1 = Color3.fromRGB(102, 255, 153),
	Color2 = Color3.fromRGB(102, 255, 153),
	Color3 = Color3.fromRGB(102, 255, 153),

}

local old; old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
	if self.Name == "CommE" then
		local args = {...}

		if args[1] == "Dodge" then
Player.Character.Humanoid:LoadAnimation(ReplicatedStorage.Util.Anims.Storage["2"].RaceTransform):Play()
         
          
			coroutine.wrap (function() wait(1) require(ReplicatedStorage.Effect.Container.RaceTransformation.Main)(ArgsDash) end)()
            
				end
	end
	
	return old(self, ...)
end))
end

function NoDodgeCool()
		if nododgecool then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not nododgecool
							end
						end
					end
				end
			end
		end
	end
function killaura()
for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat task.wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(500,500,500)
                            v.HumanoidRootPart.Transparency = 1
                        until not Killaura or not getgenv().AutoRaid or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
end
function EquipWeapon(tool)  if game.Players.LocalPlayer.Backpack:FindFirstChild(tool) then   local tool_s = game.Players.LocalPlayer.Backpack:FindFirstChild(tool)    wait() game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool_s) end end
function Click() game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))end
function CheckQuest() local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then 
            Ms = "Bandit [Lv. 5]"
            NaemQuest = "BanditQuest1"
            LevelQuest = 1
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905)
            PosQuest = Vector3.new(1061.66699, 16.5166187, 1544.52905)
            CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516)
            PosMon = Vector3.new(1199.31287, 52.2717781, 1536.91516)
        elseif MyLevel == 10 or MyLevel <= 14 then 
            Ms = "Monkey [Lv. 14]"
            NaemQuest = "JungleQuest"
            LevelQuest = 1
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
            PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
            CFrameMon = CFrame.new(-1772.4093017578, 60.860641479492, 54.872589111328)
            PosMon = Vector3.new(-1772.4093017578, 60.860641479492, 54.872589111328)
        elseif MyLevel == 15 or MyLevel <= 29 then 
            Ms = "Gorilla [Lv. 20]"
            NaemQuest = "JungleQuest"
            LevelQuest = 2
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732)
            PosQuest = Vector3.new(-1604.12012, 36.8521118, 154.23732)
            CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664)
            PosMon = Vector3.new(-1223.52808, 6.27936459, -502.292664)
        elseif MyLevel == 30 or MyLevel <= 39 then 
            Ms = "Pirate [Lv. 35]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 1
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211)
            PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.16211)
            CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452)
            PosMon = Vector3.new(-1219.32324, 4.75205183, 3915.63452)
        elseif MyLevel == 40 or MyLevel <= 59 then 
            Ms = "Brute [Lv. 45]"
            NaemQuest = "BuggyQuest1"
            LevelQuest = 2
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.1621)
            PosQuest = Vector3.new(-1139.59717, 4.75205183, 3825.1621)
            CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333)
            PosMon = Vector3.new(-1146.49646, 96.0936813, 4312.1333)
        elseif MyLevel == 60 or MyLevel <= 74 then 
            Ms = "Desert Bandit [Lv. 60]"
            NaemQuest = "DesertQuest"
            LevelQuest = 1
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
            PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
            CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609)
            PosMon = Vector3.new(932.788818, 6.4503746, 4488.24609)
        elseif MyLevel == 75 or MyLevel <= 89 then 
            Ms = "Desert Officer [Lv. 70]"
            NaemQuest = "DesertQuest"
            LevelQuest = 2
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.9716)
            PosQuest = Vector3.new(897.031128, 6.43846416, 4388.9716)
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426)
            PosMon = Vector3.new(1580.03198, 4.61375761, 4366.86426)
        elseif MyLevel == 90 or MyLevel <= 99 then 
            Ms = "Snow Bandit [Lv. 90]"
            NaemQuest = "SnowQuest"
            LevelQuest = 1
            NameMon = "Snow Bandits"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
            PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
            PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
        elseif MyLevel == 100 or MyLevel <= 119 then 
            Ms = "Snowman [Lv. 100]"
            NaemQuest = "SnowQuest"
            LevelQuest = 2
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482)
            PosQuest = Vector3.new(1384.14001, 87.272789, -1297.06482)
            CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905)
            PosMon = Vector3.new(1370.24316, 102.403511, -1411.52905)
        elseif MyLevel == 120 or MyLevel <= 149 then 
            Ms = "Chief Petty Officer [Lv. 120]"
            NaemQuest = "MarineQuest2"
            LevelQuest = 1
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443)
            PosQuest = Vector3.new(-5035.0835, 28.6520386, 4325.29443)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516)
            PosMon = Vector3.new(-4882.8623, 22.6520386, 4255.53516)
        elseif MyLevel == 150 or MyLevel <= 174 then 
            Ms = "Sky Bandit [Lv. 150]"
            NaemQuest = "SkyQuest"
            LevelQuest = 1
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353)
            PosMon = Vector3.new(-4970.74219, 294.544342, -2890.11353)
        elseif MyLevel == 175 or MyLevel <= 189 then 
            Ms = "Dark Master [Lv. 175]"
            NaemQuest = "SkyQuest"
            LevelQuest = 2
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436)
            PosQuest = Vector3.new(-4841.83447, 717.669617, -2623.96436)
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
            PosMon = Vector3.new(-5220.58594, 430.693298, -2278.17456)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Ms = "Prisoner [Lv. 190]"
                NaemQuest = "PrisonerQuest"
                LevelQuest = 1
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                PosQuest = Vector3.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                PosMon = Vector3.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Ms = "Dangerous Prisoner [Lv. 210]"
                NaemQuest = "PrisonerQuest"
                LevelQuest = 2
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                PosQuest = Vector3.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                PosMon = Vector3.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
        elseif MyLevel == 250 or MyLevel <= 274 then 
            Ms = "Toga Warrior [Lv. 225]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 1
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
            PosMon = Vector3.new(-1779.97583, 44.6077499, -2736.35474)
        elseif MyLevel == 275 or MyLevel <= 299 then 
            Ms = "Gladiator [Lv. 275]"
            NaemQuest = "ColosseumQuest"
            LevelQuest = 2
            NameMon = "Gladiato"
            CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762)
            PosQuest = Vector3.new(-1576.11743, 7.38933945, -2983.30762)
            CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309)
            PosMon = Vector3.new(-1274.75903, 58.1895943, -3188.16309)
        elseif MyLevel == 300 or MyLevel <= 329 then 
            Ms = "Military Soldier [Lv. 300]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 1
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266)
            PosMon = Vector3.new(-5363.01123, 41.5056877, 8548.47266)
        elseif MyLevel == 300 or MyLevel <= 374 then 
            Ms = "Military Spy [Lv. 330]"
            NaemQuest = "MagmaQuest"
            LevelQuest = 2
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998)
            PosQuest = Vector3.new(-5316.55859, 12.2370615, 8517.2998)
            CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293)
            PosMon = Vector3.new(-5787.99023, 120.864456, 8762.25293)
        elseif MyLevel == 375 or MyLevel <= 399 then 
            Ms = "Fishman Warrior [Lv. 375]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 1
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif MyLevel == 400 or MyLevel <= 449 then 
            Ms = "Fishman Commando [Lv. 400]"
            NaemQuest = "FishmanQuest"
            LevelQuest = 2
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504)
            PosQuest = Vector3.new(61122.5625, 18.4716396, 1568.16504)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            PosMon = Vector3.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif MyLevel == 450 or MyLevel <= 474 then 
            Ms = "God's Guard [Lv. 450]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 1
            NameMon = "God's Guards"
            CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105)
            PosQuest = Vector3.new(-4721.71436, 845.277161, -1954.20105)
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
            PosMon = Vector3.new(-4716.95703, 853.089722, -1933.925427)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
        elseif MyLevel == 475 or MyLevel <= 524 then 
            Ms = "Shanda [Lv. 475]"
            NaemQuest = "SkyExp1Quest"
            LevelQuest = 2
            NameMon = "Shandas"
            CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324)
            PosQuest = Vector3.new(-7863.63672, 5545.49316, -379.826324)
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509)
            PosMon = Vector3.new(-7685.12354, 5601.05127, -443.171509)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
        elseif MyLevel == 525 or MyLevel <= 549 then 
            Ms = "Royal Squad [Lv. 525]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 1
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729)
            PosMon = Vector3.new(-7685.02051, 5606.87842, -1442.729)
        elseif MyLevel == 550 or MyLevel <= 624 then 
            Ms = "Royal Soldier [Lv. 550]"
            NaemQuest = "SkyExp2Quest"
            LevelQuest = 2
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802)
            PosQuest = Vector3.new(-7902.66895, 5635.96387, -1411.71802)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351)
            PosMon = Vector3.new(-7864.44775, 5661.94092, -1708.22351)
        elseif MyLevel == 625 or MyLevel <= 649 then 
            Ms = "Galley Pirate [Lv. 625]"
            NaemQuest = "FountainQuest"
            LevelQuest = 1
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095)
            PosMon = Vector3.new(5595.06982, 41.5013695, 3961.47095)
        elseif MyLevel >= 650 then 
            Ms = "Galley Captain [Lv. 650]"
            NaemQuest = "FountainQuest"
            LevelQuest = 2
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678)
            PosQuest = Vector3.new(5254.60156, 38.5011406, 4049.69678)
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506)
            PosMon = Vector3.new(5658.5752, 38.5361786, 4928.93506)
        end
    end
    if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then 
            Ms = "Raider [Lv. 700]"
            NaemQuest = "Area1Quest"
            LevelQuest = 1
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959)
            PosMon = Vector3.new(-737.026123, 39.1748352, 2392.57959)
        elseif MyLevel == 725 or MyLevel <= 774 then 
            Ms = "Mercenary [Lv. 725]"
            NaemQuest = "Area1Quest"
            LevelQuest = 2
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589)
            PosQuest = Vector3.new(-424.080078, 73.0055847, 1836.91589)
            CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936)
            PosMon = Vector3.new(-973.731995, 95.8733215, 1836.46936)
        elseif MyLevel == 775 or MyLevel <= 874 then 
            Ms = "Swan Pirate [Lv. 775]"
            NaemQuest = "Area2Quest"
            LevelQuest = 1
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321)
            PosQuest = Vector3.new(632.698608, 73.1055908, 918.666321)
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667)
            PosMon = Vector3.new(970.369446, 142.653198, 1217.3667)
        elseif MyLevel == 875 or MyLevel <= 899 then 
            Ms = "Marine Lieutenant [Lv. 875]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 1
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            PosQuest = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-3069.66, 101.71, -3171.04)
            PosMon = Vector3.new(-3069.66, 101.71, -3171.04)
        elseif MyLevel == 900 or MyLevel <= 949 then 
            Ms = "Marine Captain [Lv. 900]"
            NaemQuest = "MarineQuest3"
            LevelQuest = 2
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523)
            PosQuest = Vector3.new(-2442.65015, 73.0511475, -3219.11523)
            CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333)
            PosMon = Vector3.new(-1868.67688, 73.0011826, -3321.66333)
        elseif MyLevel == 950 or MyLevel <= 974 then 
            Ms = "Zombie [Lv. 950]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 1
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039)
            PosMon = Vector3.new(-5634.83838, 126.067039, -697.665039)
        elseif MyLevel == 975 or MyLevel <= 999 then 
            Ms = "Vampire [Lv. 975]"
            NaemQuest = "ZombieQuest"
            LevelQuest = 2
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571)
            PosQuest = Vector3.new(-5492.79395, 48.5151672, -793.710571)
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564)
            PosMon = Vector3.new(-6030.32031, 6.4377408, -1313.5564)
        elseif MyLevel == 1000 or MyLevel <= 1049 then 
            Ms = "Snow Trooper [Lv. 1000]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 1
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958)
            PosMon = Vector3.new(535.893433, 401.457062, -5329.6958)
        elseif MyLevel == 1050 or MyLevel <= 1099 then 
            Ms = "Winter Warrior [Lv. 1050]"
            NaemQuest = "SnowMountainQuest"
            LevelQuest = 2
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287)
            PosQuest = Vector3.new(604.964966, 401.457062, -5371.69287)
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148)
            PosMon = Vector3.new(1223.7417, 454.575226, -5170.02148)
        elseif MyLevel == 1100 or MyLevel <= 1124 then 
            Ms = "Lab Subordinate [Lv. 1100]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 1
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721)
            PosMon = Vector3.new(-5769.2041, 37.9288292, -4468.38721)
        elseif MyLevel == 1125 or MyLevel <= 1174 then 
            Ms = "Horned Warrior [Lv. 1125]"
            NaemQuest = "IceSideQuest"
            LevelQuest = 2
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876)
            PosQuest = Vector3.new(-6060.10693, 15.9868021, -4904.7876)
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574)
            PosMon = Vector3.new(-6400.85889, 24.7645149, -5818.63574)
        elseif MyLevel == 1175 or MyLevel <= 1199 then 
            Ms = "Magma Ninja [Lv. 1175]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855)
            PosMon = Vector3.new(-5496.65576, 58.6890411, -5929.76855)
        elseif MyLevel == 1200 or MyLevel <= 1349 then 
            Ms = "Lava Pirate [Lv. 1200]"
            NaemQuest = "FireSideQuest"
            LevelQuest = 2
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223)
            PosQuest = Vector3.new(-5431.09473, 15.9868021, -5296.53223)
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633)
            PosMon = Vector3.new(-5169.71729, 34.1234779, -4669.73633)
        elseif MyLevel == 1250 or MyLevel <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand
            Ms = "Ship Deckhand [Lv. 1250]"
            NaemQuest = "ShipQuest1"
            LevelQuest = 1
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1275 or MyLevel <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then -- Ship Engineer
            Ms = "Ship Engineer [Lv. 1275]"
            NaemQuest = "ShipQuest1"
            LevelQuest = 2
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1300 or MyLevel <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then -- Ship Steward
            Ms = "Ship Steward [Lv. 1300]"
            NaemQuest = "ShipQuest2"
            LevelQuest = 1
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1325 or MyLevel <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then -- Ship Officer
            Ms = "Ship Officer [Lv. 1325]"
            NaemQuest = "ShipQuest2"
            LevelQuest = 2
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
			if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif MyLevel == 1350 or MyLevel <= 1374 then 
            Ms = "Arctic Warrior [Lv. 1350]"
            NaemQuest = "FrostQuest"
            LevelQuest = 1
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314)
            PosMon = Vector3.new(5995.07471, 57.3188477, -6183.47314)
            if getgenv().AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
        elseif MyLevel == 1375 or MyLevel <= 1424 then 
            Ms = "Snow Lurker [Lv. 1375]"
            NaemQuest = "FrostQuest"
            LevelQuest = 2
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107)
            PosQuest = Vector3.new(5669.43506, 28.2117786, -6482.60107)
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518)
            PosMon = Vector3.new(5518.00684, 60.5559731, -6828.80518)
        elseif MyLevel == 1425 or MyLevel <= 1449 then 
            Ms = "Sea Soldier [Lv. 1425]"
            NaemQuest = "ForgottenQuest"
            LevelQuest = 1
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
            PosMon = Vector3.new(-3030.3696289063, 191.13464355469, -9859.7958984375)
        elseif MyLevel >= 1450 then 
            Ms = "Water Fighter [Lv. 1450]"
            NaemQuest = "ForgottenQuest"
            LevelQuest = 2
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943)
            PosQuest = Vector3.new(-3052.99097, 236.881363, -10148.1943)
            CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
            PosMon = Vector3.new(-3436.7727050781, 290.52191162109, -10503.438476563)
        end
    end
if ThreeWorld then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
            NaemQuest = "PiratePortQuest"
            LevelQuest = 1
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Ms = "Pistol Billionaire [Lv. 1525]"
            NaemQuest = "PiratePortQuest"
            LevelQuest = 2
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984)
            PosQuest = Vector3.new(-290.074677, 42.9034653, 5581.58984)
            CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
            PosMon = Vector3.new(81.164993286133, 43.755737304688, 5724.7021484375)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NaemQuest = "AmazonQuest"
            LevelQuest = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
            PosMon = Vector3.new(6241.9951171875, 51.522083282471, -1243.9771728516)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NaemQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563)
            PosQuest = Vector3.new(5832.83594, 51.6806107, -1101.51563)
            CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
            PosMon = Vector3.new(6488.9155273438, 383.38375854492, -110.66246032715)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Ms = "Female Islander [Lv. 1625]"
            NaemQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            PosQuest = Vector3.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(5825.2241210938, 682.89245605469, 704.57958984375)
            PosMon = Vector3.new(5825.2241210938, 682.89245605469, 704.57958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then
            Ms = "Giant Islander [Lv. 1650]"
            NaemQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676)
            PosQuest = Vector3.new(5448.86133, 601.516174, 751.130676)
            CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
            PosMon = Vector3.new(4530.3540039063, 656.75695800781, -131.60952758789)
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Ms = "Marine Commodore [Lv. 1700]"
            NaemQuest = "MarineTreeIsland"
            LevelQuest = 1
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
            PosMon = Vector3.new(2490.0844726563, 190.4232635498, -7160.0502929688)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NaemQuest = "MarineTreeIsland"
            LevelQuest = 2
            NameMon = "Marine Rear Admiral"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            PosQuest = Vector3.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            PosMon = Vector3.new(3951.3903808594, 229.11549377441, -6912.81640625)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Ms = "Fishman Raider [Lv. 1775]"
            NaemQuest = "DeepForestIsland3"
            LevelQuest = 1
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
            PosMon = Vector3.new(-10322.400390625, 390.94473266602, -8580.0908203125)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Ms = "Fishman Captain [Lv. 1800]"
            NaemQuest = "DeepForestIsland3"
            LevelQuest = 2
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            PosQuest = Vector3.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            PosMon = Vector3.new(-11194.541992188, 442.02795410156, -8608.806640625)
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Ms = "Forest Pirate [Lv. 1825]"
            NaemQuest = "DeepForestIsland"
            LevelQuest = 1
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
            PosMon = Vector3.new(-13225.809570313, 428.19387817383, -7753.1245117188)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Ms = "Mythological Pirate [Lv. 1850]"
            NaemQuest = "DeepForestIsland"
            LevelQuest = 2
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137)
            PosQuest = Vector3.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            PosMon = Vector3.new(-13869.172851563, 564.95251464844, -7084.4135742188)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Ms = "Jungle Pirate [Lv. 1900]"
            NaemQuest = "DeepForestIsland2"
            LevelQuest = 1
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
            PosMon = Vector3.new(-11982.221679688, 376.32522583008, -10451.415039063)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Ms = "Musketeer Pirate [Lv. 1925]"
            NaemQuest = "DeepForestIsland2"
            LevelQuest = 2
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            PosQuest = Vector3.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            PosMon = Vector3.new(-13282.3046875, 496.23684692383, -9565.150390625)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NaemQuest = "HauntedQuest1"
            LevelQuest = 1
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
            PosMon = Vector3.new(-8817.880859375, 191.16761779785, 6298.6557617188)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Ms = "Living Zombie [Lv. 2000]"
            NaemQuest = "HauntedQuest1"
            LevelQuest = 2
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            PosQuest = Vector3.new(-9480.8271484375, 142.13066101074, 5566.0712890625)
            CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
            PosMon = Vector3.new(-10125.234375, 183.94705200195, 6242.013671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049  then
            Ms = "Demonic Soul [Lv. 2025]"
            NaemQuest = "HauntedQuest2"
            LevelQuest = 1
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            PosMon = Vector3.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif MyLevel >= 2050 and MyLevel <= 2074  then
            Ms = "Posessed Mummy [Lv. 2050]"
            NaemQuest = "HauntedQuest2"
            LevelQuest = 2
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            PosQuest = Vector3.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)    
            PosMon = Vector3.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif MyLevel >= 2075 and MyLevel <= 2099  then
            Ms = "Peanut Scout [Lv. 2075]"
            NaemQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)    
            PosMon = Vector3.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)
        elseif MyLevel >= 2100 and MyLevel <= 2124  then
            Ms = "Peanut President [Lv. 2100]"
            NaemQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)    
            PosMon = Vector3.new(-2126.47998, 192.095154, -10204.6553, 0.0779861137, -9.29044361e-08, 0.996954441, 6.59006432e-08, 1, 8.80332109e-08, -0.996954441, 5.88345728e-08, 0.0779861137)
        elseif MyLevel >= 2125 and MyLevel <= 2149  then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NaemQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)    
            PosMon = Vector3.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
        elseif MyLevel >= 2150 and MyLevel <= 2200 then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NaemQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            PosQuest = Vector3.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)    
            PosMon = Vector3.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
            elseif MyLevel >= 2200 and MyLevel <= 2225 then
            Ms = "Cookie Crafter [Lv. 2200]"
            NaemQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            PosQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            CFrameMon = CFrame.new(-2272.864013671875, 146.5398406982422, -12189.0478515625)
            PosMon = CFrame.new(-2272.864013671875, 146.5398406982422, -12189.0478515625)
        elseif MyLevel >= 2225 and MyLevel <= 2250 then
            Ms = "Cake Guard [Lv. 2225]"
            NaemQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            PosQuest = CFrame.new(-2021.29150390625, 37.79822540283203, -12027.0205078125)
            CFrameMon = CFrame.new(-1823.2464599609375, 210.2261505126953, -12292.82421875)
            PosMon = CFrame.new(-1823.2464599609375, 210.2261505126953, -12292.82421875)
        elseif MyLevel >= 2250 and MyLevel <= 2275 then
            Ms = "Baking Staff [Lv. 2250]"
            NaemQuest = "CakeQuest2"
            LevelQuest = 1
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1928.324462890625, 37.798133850097656, -12843.0517578125)
            PosQuest = CFrame.new(-1928.324462890625, 37.798133850097656, -12843.0517578125)
            CFrameMon = CFrame.new(-2000.436767578125, 385.1067810058594, -13096.3330078125)
            PosMon = CFrame.new(-2000.436767578125, 385.1067810058594, -13096.3330078125)
        elseif MyLevel == 2275 and MyLevel <= 2300 then

            Ms = "Head Baker [Lv. 2275]"

            NaemQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
         elseif MyLevel == 2300 and Level <= 2324 then
               Ms = "Cocoa Warrior [Lv. 2300]"
               LevelQuest = 1
               NaemQuest = "ChocQuest1"
               NameMon = "Cocoa Warrior"
               CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
               CFrameMon = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
            elseif MyLevel == 2325 and Level <= 2349 then
               Ms = "Chocolate Bar Battler [Lv. 2325]"
               LevelQuest = 2
               NaemQuest = "ChocQuest1"
               NameMon = "Chocolate Bar Battler"
              CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
              CFrameMon = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
              elseif MyLevel == 2350 and Level <= 2374 then
               Ms = "Sweet Thief [Lv. 2350]"
               LevelQuest = 1
               NaemQuest = "ChocQuest2"
               NameMon = "Sweet Thief"
              CFrameQuest = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
              CFrameMon = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
             elseif MyLevel >= 2375 then
               Ms = "Candy Rebel [Lv. 2375]"
               LevelQuest = 2
               NaemQuest = "ChocQuest2"
               NameMon = "Candy Rebel"
              CFrameQuest = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
              CFrameMon = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)end
    end
end
CheckQuest()
function EquipWeapon(ToolSe) if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) wait(.4)
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)end end

local UiLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Bestxemchua/agagagaq/main/Ui/GG.txt'))()
local DINOHUB = Instance.new("ScreenGui")
local OPENCLOSE = Instance.new("TextButton") DINOHUB.Name="DINOHUB"
DINOHUB.Parent=game.CoreGui
DINOHUB.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
OPENCLOSE.Name="OPENCLOSE"
OPENCLOSE.Parent=DINOHUB
OPENCLOSE.BackgroundColor3=Color3.fromRGB(255, 52, 0)
OPENCLOSE.BorderSizePixel=0
OPENCLOSE.Position=UDim2.new(0.120833337, 0, 0.0952890813, 0)
OPENCLOSE.Size=UDim2.new(0.0447916649, 0, 0.0845824406, 0)
OPENCLOSE.Font=Enum.Font.DenkOne
OPENCLOSE.Text="Open"
OPENCLOSE.TextColor3=Color3.fromRGB(255, 0, 0)
OPENCLOSE.TextScaled=true
OPENCLOSE.TextSize=14.000
OPENCLOSE.TextWrapped=true
OPENCLOSE.MouseButton1Click:Connect(function()
game.CoreGui:FindFirstChild("Best Xem Chùa").Enabled = not game.CoreGui:FindFirstChild("Best Xem Chùa").Enabled
end)

local win = UiLib:Window("😱Béo HUB | Blox Fruits v17.3", Color3.fromRGB(246, 241, 28))
local Up = win:Tab("💫Update")
local AutoFarm = win:Tab("🎊Main")
local Main = win:Tab("💪Auto Something")
local Stat = win:Tab("✨⭐Stats")
local Pvp = win:Tab("🙇Players")
local ShopTab = win:Tab("👛Shop")
local RaidsTab =  win:Tab("💀 Raids")
local TeleportTab = win:Tab("🦸💝Teleport")
local Misc = win:Tab("🌚🌝 Misc")
lol = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(lol ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(lol, v.Name)
    end
end
spawn(function()  game:GetService("RunService").Heartbeat:Connect(function() if getgenv().NoClip or getgenv().AutoFarm or getgenv().Observation or getgenv().AutoNew or getgenv().Factory or getgenv().GunMastery or getgenv().Mastery or FramBoss or FramAllBoss or getgenv().getgenv().AutoBartilo or getgenv().MobAura or getgenv().AutoRengoku or getgenv().AutoSharkman or getgenv().Ectoplasm or getgenv().PoleHop or getgenv().SwanHop or getgenv().BlackBeardHop or getgenv().Chest or getgenv().Electro or rainbowhaki or Hunter or observationv2 or getgenv().ElitehuntHop or getgenv().EliteHunt or getgenv().Pole or getgenv().Tushitahop or getgenv().YamaHop or getgenv().StoreFruit or getgenv().HolyTorch then   if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,-0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then  game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0) end
else  if game:GetService("Workspace"):FindFirstChild("LOL") then  game:GetService("Workspace"):FindFirstChild("LOL"):Destroy() end end end) end)
spawn(function()  game:GetService("RunService").Stepped:Connect(function()  if getgenv().NoClip or getgenv().AutoFarm or getgenv().Observation or getgenv().AutoNew or getgenv().Factory or getgenv().GunMastery or getgenv().Mastery or FramBoss or FramAllBoss or getgenv().getgenv().AutoBartilo or getgenv().MobAura or getgenv().AutoRengoku or getgenv().AutoSharkman or getgenv().Ectoplasm or getgenv().PoleHop or getgenv().SwanHop or getgenv().BlackBeardHop or getgenv().Chest or getgenv().Electro or rainbowhaki or Hunter or observationv2 or getgenv().ElitehuntHop or getgenv().EliteHunt or getgenv().Pole or getgenv().Tushitahop or getgenv().YamaHop or getgenv().StoreFruit or getgenv().HolyTorch then  for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do  if v:IsA("BasePart") then
   v.CanCollide = false end     end    end end) end)
   Up:Label("Update Change Ui")
   Up:Label("Fix AutoFarm Bone")
   Up:Label("Add Auto Select Farm Bone/Boss")
   Up:Label("Add Auto Farm Boss")
   Up:Label("delete Hitbox Photo")
   Up:Label("Add Super Bring Mob")
   Up:Label("Check Elti/Point")
   Up:Label("Add Soru No Cooldown")
   Up:Label("Add Buy Items")
AutoFarm:Toggle("Auto Farm",false,function(vu)
    getgenv().AutoFarm= vu
end)
spawn(function()
		while wait() do
			if getgenv().AutoFarm then
				AutoQuest()
				TP()
				autofarm()
			end
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if getgenv().NoClip or getgenv().AutoFarm or getgenv().Observation or getgenv().AutoNew or getgenv().Factory or getgenv().GunMastery or getgenv().Mastery or FramBoss or FramAllBoss or getgenv().getgenv().AutoBartilo or getgenv().MobAura or getgenv().AutoRengoku or getgenv().AutoSharkman or getgenv().Ectoplasm or getgenv().PoleHop or getgenv().SwanHop or getgenv().BlackBeardHop or getgenv().Chest or getgenv().Electro or rainbowhaki or Hunter or observationv2 or getgenv().ElitehuntHop or getgenv().EliteHunt or getgenv().Pole or getgenv().Tushitahop or getgenv().YamaHop or getgenv().StoreFruit or getgenv().HolyTorch then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
    if getgenv().AutoFarm then
       game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
	end
end)

spawn(function()
    while wait() do
        if getgenv().AutoFarm then
            AutoQuest()
            TP()
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().bodyvelo then
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody") then
                local BV = Instance.new("BodyVelocity")
                BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                BV.Name = "VelocityBody"
                BV.MaxForce = Vector3.new(100000,100000,100000)
                BV.Velocity = Vector3.new(0,0,0)
            end
        else
            if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody") then
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityBody"):Destroy()
            end
        end
    end
end)
function AutoQuest()     if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
        CheckQuest()
        repeat wait()
            chichdiem(CFrameQuest)
        until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 4
        wait(0.4)
        local args = {
            [1] = "StartQuest",
            [2] = NaemQuest,
            [3] = LevelQuest
        }
            
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
end
function TP()
    local mob = game:GetService("Workspace").Enemies:GetChildren()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == Ms and v:FindFirstChild("Humanoid") then
								if v.Humanoid.Health > 0 then
									repeat game:GetService("RunService").Heartbeat:wait()
										if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
											if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                EquipWeapon(getgenv().tool)
                                                AutoHaki()
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
												MagnetActive = true
												PosMon = v.HumanoidRootPart.CFrame
											else
												
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											end
										else
											
											
											chichdiem(CFrameMon)
										end
									until not v.Parent or v.Humanoid.Health <= 0 or getgenv().AutoFarm == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
								end
							end
						end
end

end
end

function autofarm()
    pcall(function()
	if getgenv().AutoFarm then
		if AutoQuest then
			if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				StopTween()
				StatrMagnet = false
				CheckQuest()
				repeat chichdiem(CFrameQuest) wait() until getgenv().StopTween == true or not getgenv().AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 8
				wait(0.9)
				if getgenv().AutoFarm then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest)
				end
			elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
				CheckQuest()
				if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
					pcall(function()
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								CheckQuest()  
								if v.Name == Ms then
									repeat wait()
										spawn(function()
											if game:GetService("Workspace").Enemies:FindFirstChild(Ms) and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") then
												if LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:find(NameMon) then
													chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													PosHee = v.HumanoidRootPart.CFrame
													EquipWeapon(getgenv().tool)
               Click()
													PosHee = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
													StatrMagnet = true
												else
													StopTween()
													local args = {
														[1] = "AbandonQuest"
													 }
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end  
											else
												CheckQuest() 
												StatrMagnet = false
												repeat chichdiem(CFrameMon) wait() until getgenv().StopTween == true or not getgenv().AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
											end 
										end)
									until not v.Parent or v.Humanoid.Health <= 0 or getgenv().AutoFarm == false or LocalPlayer.PlayerGui.Main.Quest.Visible == false
									CheckQuest() 
									StatrMagnet = false
								end
							end
						end
					)
				else
					CheckQuest()
					StatrMagnet = false
					repeat chichdiem(CFrameMon) wait() until getgenv().StopTween == true or not getgenv().AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
				end 
			end
		else
			CheckQuest()
			if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
				pcall(
					function()
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							CheckQuest() 
							if v.Name == Ms then
								repeat wait()
									if game:GetService("Workspace").Enemies:FindFirstChild(Ms) and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") then
										chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										EquipWeapon(getgenv().tool)
Click()
										PosHee = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
										StatrMagnet = true
									else
										CheckQuest() 
										StatrMagnet = false
										repeat chichdiem(CFrameMon) wait() until getgenv().StopTween == true or not getgenv().AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
									end 
								until not v.Parent or v.Humanoid.Health <= 0 or getgenv().AutoFarm == false
								CheckQuest() 
								StatrMagnet = false
							end
						end
					end
				)
			else
				CheckQuest()
				StatrMagnet = false
				repeat chichdiem(CFrameMon) wait() until getgenv().StopTween == true or not getgenv().AutoFarm or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude <= 8
		     	end 
		    end
	    end
	end)
end


local SelectToolWeapona = AutoFarm:Dropdown("SelectWeapon",lol,function(Select)
    getgenv().tool = Select
end)

AutoFarm:Button("Refresh Weapon", function()
	SelectToolWeapona:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			SelectToolWeapona:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			SelectToolWeapona:Add(v.Name)
		end
	end
end)
    AutoFarm:Toggle("Lock Mob",false,function(lm)
  getgenv().lockmob=lm 
end)
spawn(function()
while wait() do
if getgenv().lockmob then
pcall(function()
       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Ms then
    if y.Name == Ms then
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Anchored = true
   v.HumanoidRootPart.CanCollide = false
   y.HumanoidRootPart.CanCollide = false
   v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
     end
end
end
end
end
end)
end
end
end)

AutoFarm:Toggle("Bring Mobs",false,function(bm)
        getgenv().bringmobs=bm
 end)
spawn(function()
    while wait() do
        if getgenv().bringmobs  then
            pcall(function()
            CheckQuest()
       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Ms then
    if y.Name == Ms then
   v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.HumanoidRootPart.CanCollide = false
   y.HumanoidRootPart.CanCollide = false
   v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end
end)
end
end
end)
AutoFarm:Toggle("Bring mob[Lag]",false,function(br)
getgenv().bringmob = br
end)
spawn(function()
    while wait() do
        if getgenv().bringmob  then
            pcall(function()
            CheckQuest()
       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Ms then
    if y.Name == Ms then
   Bringlon = true
MainMon = v.HumanoidRootPart.CFrame
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.HumanoidRootPart.CanCollide = false
   y.HumanoidRootPart.CanCollide = false
   v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end
end)
end
end
end)
spawn(function()
		while wait() do
			if Bringlon and getgenv().bringmob then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if Bringlon  then
						v.HumanoidRootPart.CFrame = MainMon
						v.HumanoidRootPart.CanCollide = false
					end
				end
			end
		end
	end)
                      AutoFarm:Toggle("Fast Attack",false,function(chim)
  getgenv().fast = chim
end)
local concac
if getupvalues then concac=getupvalues end
if debug then 
  if debug.getupvalues then concac=debug.getupvalues end
end
require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).Shake = function() end
local CombatFrameworkR = concac(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				CombatFrameworkR.activeController.hitboxMagnitude = 55
				
					if getgenv().fast then
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
							CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
							CombatFrameworkR.activeController.timeToNextAttack = 2
						else
							CombatFrameworkR.activeController.timeToNextAttack = 0
						end
						CombatFrameworkR.activeController.attacking = false
						CombatFrameworkR.activeController.increment = 3
						CombatFrameworkR.activeController.blocking = false
						CombatFrameworkR.activeController.timeToNextBlock = 0
						game.Players.LocalPlayer.Character.Humanoid.Sit = false	
					end
			end)
		end)
	end)
	
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
					if getgenv().fast then
						Click()
					end
			end)
		end)
	end)
	local concac
if getupvalues then concac=getupvalues end
if debug then 
  if debug.getupvalues then concac=debug.getupvalues end
end
require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).Shake = function() end
local CombatFramework = concac(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
local CameraShakerK = require(game.ReplicatedStorage.Util.CameraShaker)
spawn(function()
    while true do
        if getgenv().fast then
            pcall(function()
                CameraShakerK:Stop()
                CombatFramework.activeController.attacking = false
                CombatFramework.activeController.timeToNextAttack = 0
                CombatFramework.activeController.increment = 3
                CombatFramework.activeController.hitboxMagnitude = 100
                CombatFramework.activeController.blocking = false
                CombatFramework.activeController.timeToNextBlock = 0
                CombatFramework.activeController.focusStart = 0
                CombatFramework.activeController.humanoid.AutoRotate = true
            end)
        end
        task.wait()
    end
end)
coroutine.wrap(function()
local concac
if getupvalues then concac=getupvalues end
if debug then 
  if debug.getupvalues then concac=debug.getupvalues end
end
require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).Shake = function() end
local v = concac(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
    for v,v in pairs(getreg()) do
        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
             for v,v in pairs(debug.getupvalues(v)) do
                if typeof(v) == "table" then
                    spawn(function()
                        game:GetService("RunService").RenderStepped:Connect(function()
                            if getgenv().fast then
                                 pcall(function()
                                     v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                     v.activeController.attacking = false
                                     v.activeController.increment = 3
                                     v.activeController.blocking = false   
                                     v.activeController.hitboxMagnitude = 50
    		                         v.activeController.humanoid.AutoRotate = true
    	                      	     v.activeController.focusStart = 0
    	                      	     v.activeController.currentAttackTrack = 0
                                     sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
 
                                 end)
                             end
                         end)
                    end)
                end
            end
        end
    end
end)();
                                 
                   Main:Toggle("Auto Evo Race",false,function(vu)
		getgenv().Autorace = vu
	end)

	spawn(function()
		while wait() do
			if getgenv().Autorace then
				if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
						chichdiem(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
						if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
							wait(1.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
						pcall(function()
							if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
								chichdiem(game.Workspace.Flower1.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
								chichdiem(game.Workspace.Flower2.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Swan Pirate [Lv. 775]" then
											repeat game:GetService("RunService").Heartbeat:wait()
												EquipWeapon(SelectWeapon)
												chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
												PosMonRace = v.HumanoidRootPart.CFrame
												
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or AutoEvoRace == false
											
										end
									end
								else
									
									chichdiem(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
								end
							end
						end)
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
					end
				end
			end
		end
	end)
Main:Toggle("Auto Rengoku",false,function(vu)
    getgenv().AutoRengoku = vu
end)	

spawn(function()
	pcall(function()
		while wait() do
			if getgenv().AutoRengoku then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
					EquipWeapon("Hidden Key")
					chichdiem(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
							repeat game:GetService("RunService").Heartbeat:wait()
								getgenv().type = "Melee" -- "Blox Fruit" ,"Sword" ,"Gun" ,"Wear"
for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ToolTip == getgenv().type then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
end

								PosMonRengoku = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or getgenv().AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
							
						end
					end
				else
					chichdiem(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
				end
			end
		end
	end)
end)

Main:Toggle("Auto Bartilo Quest",false,function(vu)
	getgenv().AutoBartilo = vu
	if vu == false then
		chichdiem(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
spawn(function()
	while wait() do
		if getgenv().AutoBartilo then
			if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQueschichdiemrogress","Bartilo") == 0 then
			    getgenv().AutoFarm = false
				if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
					if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Swan Pirate [Lv. 775]" then
								pcall(function()
									repeat wait(.1)
										getgenv().type = "Melee" -- "Blox Fruit" ,"Sword" ,"Gun" ,"Wear"
for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ToolTip == getgenv().type then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
end

										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										PosMonBartilo = v.HumanoidRootPart.CFrame
										MagnetBatilo = true
									until not v.Parent or v.Humanoid.Health <= 0 or getgenv().AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									MagnetBatilo = false
								end)
							end
						end
					else
						MagnetBatilo = false
						chichdiem(CFrame.new(1057.92761, 137.614319, 1242.08069))
					end
				else
					chichdiem(CFrame.new(-456.28952, 73.0200958, 299.895966))
					if (Vector3.new(-456.28952, 73.0200958, 299.895966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
					end
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQueschichdiemrogress","Bartilo") == 1 then
				if QuestBartilo == nil then
					chichdiem(CFrame.new(-456.28952, 73.0200958, 299.895966))
				end
				if (Vector3.new(-456.28952, 73.0200958, 299.895966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
					wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQueschichdiemrogress","Bartilo")
					QuestBartilo = 1
				end
				if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Jeremy [Lv. 850] [Boss]" then
							repeat wait(.1)
								EquipWeapon(SelectWeapon)
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,15,6))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not v.Parent or v.Humanoid.Health <= 0 or getgenv().AutoBartilo == false
						end
					end
				else
					if QuestBartilo == 1 then
						chichdiem(CFrame.new(1931.5931396484, 402.67391967773, 956.52215576172))
					end
				end
			elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQueschichdiemrogress","Bartilo") == 2 then
				repeat chichdiem(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until   (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until   (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
						wait(1)
						repeat chichdiem(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until   (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10

			end
		end 
	end
end)
Main:Toggle("Auto Ectoplasm",false,function(vu)
	getgenv().AutoEcto = vu
	if vu == false then
		wait()
		chichdiem(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if getgenv().AutoEcto then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name, "Ship") then
							repeat game:GetService("RunService").Heartbeat:wait()
								EquipWeapon(SelectWeapon)
								if string.find(v.Name, "Ship") then
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
									PosMonEctoplas = v.HumanoidRootPart.CFrame
									
								else
									
									chichdiem(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
								end
							until getgenv().AutoEcto == false or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				else
					local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if Distance > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					chichdiem(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
				end
			end
		end
	end)
end)
Main:Toggle("Auto Buy Legendary Sword",false,function(vu)
	getgenv().LegebdarySword = vu
end)

spawn(function()
	while wait() do
		if getgenv().LegebdarySword then
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "1"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end 
	end
end)
spawn(function()
	while wait() do
		if getgenv().LegebdarySword then
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end 
	end
end)
spawn(function()
	while wait() do
		if getgenv().LegebdarySword then
			local args = {
				[1] = "LegendarySwordDealer",
				[2] = "3"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end 
	end
end)

Main:Toggle("Auto Buy Enchancement ",false,function(vu)
	Enchancement = vu
end)
spawn(function()
	while wait() do
		if Enchancement then
			pcall(function()
			local args = {
				[1] = "ColorsDealer",
				[2] = "2"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end 
	end
end)
	



spawn(function()
	while wait() do wait()
		if getgenv().AutoElectricClawV2 then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
					EquipWeapon("Electric Claw")
				end  
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")

					EquipWeapon("Electric Claw")
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
					EquipWeapon("Electro")
				end 
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
			end
		end
	end
end)

local CheckEliteHunter = Main:Label("Kill " .. game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") .. " Elite Enemies",true)
	spawn(function()
		while wait() do
			CheckEliteHunter:Refresh("Kill " .. game.ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") .. " Elite Enemies")
		end
	end)
Main:Toggle("Auto Farm Elite Hunter",false,function(vu)
	getgenv().EliteHunt = vu
end)

spawn(function()
	while wait() do
		if getgenv().EliteHunt then
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
				if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
					for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" then
							repeat wait(.1)
							   getgenv().type = "Melee" -- "Blox Fruit" ,"Sword" ,"Gun" ,"Wear"
for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ToolTip == getgenv().type then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
end

								chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,25,15))
								v.HumanoidRootPart.Transparency = 0.8
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							until getgenv().EliteHunt == false or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
						end
					end
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
			end
		end
	end
end)

Main:Toggle("Auto Holy Torch",false,function(vu)
	getgenv().HolyTorch = vu
end)
spawn(function()
	while wait() do
		if getgenv().HolyTorch then
			wait(1)
			repeat chichdiem(CFrame.new(-10752, 417, -9366)) wait() until getgenv().StopTween == true or not getgenv().HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
			wait(1)
			repeat chichdiem(CFrame.new(-11672, 334, -9474)) wait() until getgenv().StopTween == true or not getgenv().HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
			wait(1)
			repeat chichdiem(CFrame.new(-12132, 521, -10655)) wait() until getgenv().StopTween == true or not getgenv().HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
			wait(1)
			repeat chichdiem(CFrame.new(-13336, 486, -6985)) wait() until getgenv().StopTween == true or not getgenv().HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
			wait(1)
			repeat chichdiem(CFrame.new(-13489, 332, -7925)) wait() until getgenv().StopTween == true or not getgenv().HolyTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
		end
	end
end)
Main:Toggle("Auto Farm All Boss",false,function(value)
        getgenv().AutoAllBoss = value
    end)
    spawn(function()
        while wait() do
            if getgenv().AutoAllBoss then
                pcall(function()
                    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                        if string.find(v.Name,"Boss") then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(getgenv().toolo)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    chichdiem(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or getgenv().AutoAllBoss == false or not v.Parent
                            end
                            end
                        end
                    end)
end
end
end)


local Boss = {}
    
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                else
                table.insert(Boss, v.Name)
            end
        end
    end
    local BossName = Main:Dropdown("Select Boss",Boss,function(value)
        getgenv().SelectBoss = value
    end)
Main:Button("Refresh Boss",function()
        BossName:Clear()
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(v.Name, "Boss") then
                BossName:Add(v.Name) 
            end
        end
    end)
    
    Main:Toggle("Auto Farm Boss",false,function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        getgenv().AutoFarmBoss = value
        end)
    
    spawn(function()
        while wait() do
            if getgenv().AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(getgenv().SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == getgenv().SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(getgenv().toolo)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(2,10,5))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(getgenv().SelectBoss) then
                            chichdiem(game:GetService("ReplicatedStorage"):FindFirstChild(getgenv().SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
function EquipWeapon(ToolSe) if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) wait(.4) 
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)end end
K = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(K ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(K, v.Name)
    end
end
local dropdowntoolo =Main:Dropdown("Selectweapon Auto Bone/Boss",K, function(daubuoi)
    getgenv().toolo = daubuoi
end)

Main:Button("Refresh",function()
    dropdowntoolo:Clear()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
		if v:IsA("Tool") then
			dropdowntoolo:Add(v.Name)
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
		if v:IsA("Tool") then
			dropdowntoolo:Add(v.Name)
		end
	end
end)
Main:Toggle("Auto Farm Bone",false,function(vu)
	getgenv().getgenv().Auto_Bone = vu
	
end)
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().getgenv().Auto_Bone then
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:FindFirstChild("Humanoid").Health > 0 then
								repeat game:GetService("RunService").Heartbeat:wait()
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
AutoHaki()
EquipWeapon(getgenv().toolo)
v.HumanoidRootPart.Transparency = 1
                                                                       
									v.HumanoidRootPart.CanCollide = false 
y.HumanoidRootPart.CanCollide = false
                                                         v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   						v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
									MainMonBone = v.HumanoidRootPart.CFrame
									BoneMagnet = true
								until getgenv().getgenv().Auto_Bone == false or not v.Parent or v.Humanoid.Health <= 0
if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
							end
						end
					end
end
				else
					BoneMagnet = false
					chichdiem(CFrame.new(-9501.64453, 582.052612, 6034.20117))
				end
			end

		end)
	end
end)



    spawn(function()
		while wait() do
			if BoneMagnet and getgenv().Auto_Bone then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if BoneMagnet  and getgenv().Auto_Bone and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = MainMonBone
						v.HumanoidRootPart.CanCollide = false
					end
				end
			end
		end
	end)
Main:Toggle("Auto Enma Sword",false,function(vu)
	getgenv().Yama = vu
	
end)

spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Yama then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
				end
			end
		end)
	end
end)

Main:Toggle("Auto Rainbow Haki",false,function(vu)
	getgenv().AutoRainbow = vu
	
	if vu == false then
		wait(1)
		chichdiem(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if getgenv().AutoRainbow then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
				elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Stone [Lv. 1550] [Boss]" then
								repeat game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(SelectWeapon)
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
								until getgenv().AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						chichdiem(CFrame.new(-871.478455, 92.3782501, 6637.01514, -0.648528099, -2.65940674e-08, 0.761190772, -2.16472333e-08, 1, 1.64941927e-08, -0.761190772, -5.78073056e-09, -0.648528099))
					end
				elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Island Empress [Lv. 1675] [Boss]" then
								repeat game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(SelectWeapon)
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
								until getgenv().AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						chichdiem(CFrame.new(5541.21338, 668.239258, 198.150391, -0.00426674541, 5.33843725e-09, -0.99999088, 3.50221967e-08, 1, 5.18905363e-09, 0.99999088, -3.49997364e-08, -0.00426674541))
					end
				elseif  string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
								repeat game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(SelectWeapon)
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
								until getgenv().AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						chichdiem(CFrame.new(2832.35449, 432.43573, -7122.49121, 0.734633088, -8.93899994e-08, -0.678464592, 6.01928107e-09, 1, -1.25235772e-07, 0.678464592, 8.79184725e-08, 0.734633088))
					end
				elseif  string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
								repeat game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(SelectWeapon)
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
								until getgenv().AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						chichdiem(CFrame.new(-13382.852539062, 367.05572509766, -8538.9443359375))
					end
				elseif  string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
								repeat game:GetService("RunService").Heartbeat:wait()
									EquipWeapon(SelectWeapon)
									chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
								until getgenv().AutoRainbow == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						chichdiem(CFrame.new(5250.357421875, 22.536443710327, 118.65602874756))
					end
				else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
				end
			end
		end
	end)
end)
Main:Toggle("Auto Accessories",false,function(vu)
	getgenv().AutoAccessories = vu
end)

spawn(function()
	pcall(function()
		while wait() do
			if getgenv().AutoAccessories or getgenv().AutoAccessory then
				CheckAccessory = game:GetService("Players").LocalPlayer.Character
				if CheckAccessory:FindFirstChild("BlackCape") or CheckAccessory:FindFirstChild("SwordsmanHat") or CheckAccessory:FindFirstChild("PinkCoat") or CheckAccessory:FindFirstChild("TomoeRing") or CheckAccessory:FindFirstChild("MarineCape") or CheckAccessory:FindFirstChild("PirateCape") or CheckAccessory:FindFirstChild("CoolShades") or CheckAccessory:FindFirstChild("UsoapHat") or CheckAccessory:FindFirstChild("MarineCap") or CheckAccessory:FindFirstChild("BlackSpikeyCoat") or CheckAccessory:FindFirstChild("Choppa") or CheckAccessory:FindFirstChild("SaboTopHat") or CheckAccessory:FindFirstChild("WarriorHelmet") or CheckAccessory:FindFirstChild("DarkCoat") or CheckAccessory:FindFirstChild("SwanGlasses") or CheckAccessory:FindFirstChild("ZebraCap") or CheckAccessory:FindFirstChild("GhoulMask") or CheckAccessory:FindFirstChild("BlueSpikeyCoat") or CheckAccessory:FindFirstChild("RedSpikeyCoat") or CheckAccessory:FindFirstChild("SantaHat") or CheckAccessory:FindFirstChild("ElfHat") or CheckAccessory:FindFirstChild("ValkyrieHelm") or CheckAccessory:FindFirstChild("Bandanna(Black)") or CheckAccessory:FindFirstChild("Bandanna(Green)") or CheckAccessory:FindFirstChild("Bandanna(Red)") or CheckAccessory:FindFirstChild("Huntercape(Black)") or CheckAccessory:FindFirstChild("Huntercape(Green)") or CheckAccessory:FindFirstChild("Huntercape(Red)") or CheckAccessory:FindFirstChild("PrettyHelmet") or CheckAccessory:FindFirstChild("JawShield") or CheckAccessory:FindFirstChild("MusketeerHat") or CheckAccessory:FindFirstChild("Pilothelmet") or CheckAccessory:FindFirstChild("Holy Crown") then
					
				else
					repeat wait(.1)
					EquipWeapon(SelectTooAccessories)
					wait(1)
					game:GetService("Players").LocalPlayer.Character[SelectTooAccessories].RemoteFunction:InvokeServer()
					until CheckAccessory:FindFirstChild("BlackCape") or CheckAccessory:FindFirstChild("SwordsmanHat") or CheckAccessory:FindFirstChild("PinkCoat") or CheckAccessory:FindFirstChild("TomoeRing") or CheckAccessory:FindFirstChild("MarineCape") or CheckAccessory:FindFirstChild("PirateCape") or CheckAccessory:FindFirstChild("CoolShades") or CheckAccessory:FindFirstChild("UsoapHat") or CheckAccessory:FindFirstChild("MarineCap") or CheckAccessory:FindFirstChild("BlackSpikeyCoat") or CheckAccessory:FindFirstChild("Choppa") or CheckAccessory:FindFirstChild("SaboTopHat") or CheckAccessory:FindFirstChild("WarriorHelmet") or CheckAccessory:FindFirstChild("DarkCoat") or CheckAccessory:FindFirstChild("SwanGlasses") or CheckAccessory:FindFirstChild("ZebraCap") or CheckAccessory:FindFirstChild("GhoulMask") or CheckAccessory:FindFirstChild("BlueSpikeyCoat") or CheckAccessory:FindFirstChild("RedSpikeyCoat") or CheckAccessory:FindFirstChild("SantaHat") or CheckAccessory:FindFirstChild("ElfHat") or CheckAccessory:FindFirstChild("ValkyrieHelm") or CheckAccessory:FindFirstChild("Bandanna(Black)") or CheckAccessory:FindFirstChild("Bandanna(Green)") or CheckAccessory:FindFirstChild("Bandanna(Red)") or CheckAccessory:FindFirstChild("Huntercape(Black)") or CheckAccessory:FindFirstChild("Huntercape(Green)") or CheckAccessory:FindFirstChild("Huntercape(Red)") or CheckAccessory:FindFirstChild("PrettyHelmet") or CheckAccessory:FindFirstChild("JawShield") or CheckAccessory:FindFirstChild("MusketeerHat") or CheckAccessory:FindFirstChild("Pilothelmet") or CheckAccessory:FindFirstChild("Holy Crown")
				end
			end
		end
	end)
end)

spawn(function()
	while wait(.1) do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then 
				if v.ToolTip == "Wear" then    
					SelectTooAccessories = v.Name
				end
			end
		end
	end
end)





                     
    

PlayerServer = Stat:Label("Players in Server : "..game.Players.NumPlayers .. "/"..game.Players.MaxPlayers)
	Fruit = Stat:Label("Fruit : 0")
	Chest = Stat:Label("Chest : 0")
	spawn(function()
		while wait() do
			local count10 = 0
			local count = 0
			for i,v in pairs(game.workspace:GetChildren()) do
				if string.find(v.Name,"Chest") and v:IsA("Part") then
					count10 = count10 + 1
				end
			end
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "Blox Fruit Dealer" then
				else
					if string.find(v.Name, "Fruit") and v:IsA("Tool") then
						count = count + 1
					end
					if string.find(v.Name, "Fruit") and v:IsA("Model") then
						count = count + 1
					end
				end
			end
			Fruit:Refresh("Fruit : "..count)
			Chest:Refresh("Chest : "..count10)
			PlayerServer:Refresh("Players in Server : "..game.Players.NumPlayers .. "/"..game.Players.MaxPlayers)
			wait(5)
		end
	end)
Stat:Toggle("Melee",false,function(val)
	getgenv().melee = val
end)
Stat:Toggle("Defense",false,function(val)
	getgenv().health = val
end)
Stat:Toggle("Sword",false,function(val)
	getgenv().sword = val
end)
Stat:Toggle("Gun",false,function(val)
	getgenv().gun = val
end)
Stat:Toggle("Fruit",false,function(val)
	getgenv().df = val
end)

spawn(function()
	while wait() do
			if getgenv().melee then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Melee",
				   [3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().health then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Defense",
				   [3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().sword then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Sword",
				   [3] = 1
				}
		  
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().gun then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Gun",
				   [3] = 1
				}
		  
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
			if getgenv().df then
				local args = {
				   [1] = "AddPoint",
				   [2] = "Demon Fruit",
				   [3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
	players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(players,v.Name)
end
Pvp:Dropdown("Select Players",players,function(plr)
getgenv().pla = plr end)
Pvp:Button("Refresh Players",function()
table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)    
Pvp:Toggle("Auto Kill Players",nil,function(kplr)
getgenv().killplr = kplr end)
spawn(function()
pcall(function()
while wait() do
if getgenv().killplr then
chichdiem(game.Players[getgenv().pla].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2))
wait(10)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[getgenv().pla].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
end
end
end)
end)
spawn(function()
		while wait() do
			if getgenv().killplr then
				if game.Players:FindFirstChild(getgenv().pla) and (game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 300 then
					KillTween = chichdiem(game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.Position,game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.CFrame)
				elseif game.Players:FindFirstChild(getgenv().pla) and (game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 300 then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.CFrame * CFrame.new(0,25,0)
					game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.CanCollide = false
					game.Players:FindFirstChild(getgenv().pla).Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
					EquipWeapon(SelectToolWeaponGun)
					if game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) then
						spawn(function()
							pcall(function()
								local args = {
									[1] = v.HumanoidRootPart.Position,
									[2] = v.HumanoidRootPart
								}
								game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
							end)
						end)
					end 
				end
			end 
			if Skillaimbot then
				if game.Players:FindFirstChild(getgenv().pla) and game.Players:FindFirstChild(getgenv().pla).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(getgenv().pla).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(getgenv().pla).Character.Humanoid.Health > 0 then
					AimBotSkillPosition = game.Players:FindFirstChild(getgenv().pla).Character:FindFirstChild("HumanoidRootPart").Position
				end
			end
		end
	end)
spawn(function()
        pcall(function()
            while task.wait() do
                if getgenv().killplr and getgenv().pla ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(getgenv().pla).Character.HumanoidRootPart.Position
                    }
                    
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end)
spawn(function()
   pcall(function()
   while wait() do
if getgenv().killplr then
getgenv().HeadSize = 60

game:GetService('RunService').RenderStepped:connect(function()
if getgenv().killplr then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(getgenv().HeadSize,getgenv().HeadSize,getgenv().HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)



end
end
end)
end)


Pvp:Toggle("Spectate Player", false, function(se)
    getgenv().Sp = se
    local plr1 = game.Players.LocalPlayer.Character.Humanoid
    local plr2 = game.Players:FindFirstChild(getgenv().pla)
    repeat wait(.1)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until getgenv().Sp == false 
    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

Pvp:Button("Teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = chichdiem(game.Players[getgenv().pla].Character.HumanoidRootPart.CFrame)
end)
Pvp:Toggle("Safe Mode", nil, function(xc)
    getgenv().SafeMode = xc
end)

spawn(function()
    while wait() do
        if getgenv().SafeMode then
            if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000000000000000,0)
            end
        end
    end
end)










	ShopTab:Label("Abilities",true)
	ShopTab:Button("Skyjump [ $10,000 Beli ]",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Geppo"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Buso Haki [ $25,000 Beli ]",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Buso"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Observation haki [ $750,000 Beli ]",function()
		local args = {
			[1] = "KenTalk",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Soru [ $100,000 Beli ]",function()
		local args = {
			[1] = "BuyHaki",
			[2] = "Soru"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Buy Random Devil Fruit",function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
	end)
	ShopTab:Toggle("Auto Random Devil Fruit",false,function(v)
		getgenv().DevilAutoBuy = v
	end)
	spawn(function()
		while wait() do 
			if getgenv().DevilAutoBuy then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			end
		end
	end)
	ShopTab:Label("Fighting Style",true)
	ShopTab:Button("Black Leg",function()
		local args = {
			[1] = "BuyBlackLeg"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Electro",function()
		local args = {
			[1] = "BuyElectro"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Fishman Karate",function()
		local args = {
			[1] = "BuyFishmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Dragon Claw",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "DragonClaw",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Superhuman",function()
		local args = {
			[1] = "BuySuperhuman"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Death Step",function()
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Sharkman Karate",function()
		local args = {
			[1] = "BuySharkmanKarate",
			[2] = true
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Electric Claw",function()
		local string_1 = "BuyElectricClaw";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);
	end)
	ShopTab:Button("Dragon Talon",function()
		local string_1 = "BuyDragonTalon";
		local bool_1 = true;
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1, bool_1);
		local string_1 = "BuyDragonTalon";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);
	end)
	
	ShopTab:Label("Sword",true)
	ShopTab:Button("Katana [ $1,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Katana"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Cutlass [ $1,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Cutlass"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)  
	ShopTab:Button("Dual Katana [ $12,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Dual Katana"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Iron Mace [ $25,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Iron Mace"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Triple Katana [ $60,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Triple Katana"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Pipe [ $100,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Pipe"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Soul Cane [ $750,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Soul Cane"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Dual-Headed Blade [ $400,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Dual-Headed Blade"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Bisento [ $1,200,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Bisento"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Pole v.2 [ 5,000 Fragments )",function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
	end)
	ShopTab:Label("Gun",true)
	ShopTab:Button("Slingshot [ $5,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Slingshot"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Musket [ $8,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Musket"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Flintlock [ $10,500 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Flintlock"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Refined Slingshot [ $30,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Refined Slingshot"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Refined Flintlock [ $65,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Refined Flintlock"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Kabucha [ 1,500 Fragments)",function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
	end)
ShopTab:Label("Accessories",true)
	ShopTab:Button("Black Cape [ $50,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Black Cape"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Swordsman Hat [ 150k Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Swordsman Hat"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Tomoe Ring [ $500k Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Tomoe Ring"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	
	ShopTab:Label("Race & etc.",true)
	ShopTab:Button("Race Ghoul",function()
		local args = {
			[1] = "Ectoplasm",
			[2] = "BuyCheck",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Ectoplasm",
			[2] = "Change",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Race Cyborg",function()
		local args = {
			[1] = "CyborgTrainer",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Random Race (Use 3K Fragments)",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Reroll",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	ShopTab:Button("Reset Stats (Use 2.5K Fragments)",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Refund",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	RaidsTab:Toggle("Kill aura",false,function(em)
	getgenv().killaura = em
end)
spawn(function()
while wait() do
if getgenv().killaura then
killaura()
end
end
end)
RaidsTab:Toggle("Auto Next Island",false,function(next)
getgenv().Auto_RaidsTab=next
end)
spawn(function()
        pcall(function() 
            while wait() do
                if getgenv().Auto_RaidsTab then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                    until not getgenv().Auto_RaidsTab or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if getgenv().Auto_RaidsTab then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,25,0))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,25,0))
                        end
                    end
                end
            end
        end)
    end)
    RaidsTab:Toggle("Auto Awakener",false,function(value)
        getgenv().Auto_Awakener = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if getgenv().Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
    RaidsTab:Dropdown("Select Chips",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},function(value)
        getgenv().SelectChip = value
    end)
    
    RaidsTab:Toggle("Auto Select RaidsTab",false,function(value)
        getgenv().AutoSelectRaidsTab = value
    end)
    
    spawn(function()
        while wait() do
            if getgenv().AutoSelectRaidsTab then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        getgenv().SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        getgenv().SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        getgenv().SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        getgenv().SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        getgenv().SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        getgenv().SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        getgenv().SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        getgenv().SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        getgenv().SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        getgenv().SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        getgenv().SelectChip = "Bird: Phoenix"
                    else
                        getgenv().SelectChip = "Flame"
                    end
                end)
            end
        end
    end)
    RaidsTab:Toggle("Auto Buy Chip",false,function(value)
        getgenv().AutoBuyChip = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if getgenv().AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", getgenv().SelectChip)
                        end
                    end
                end
            end
        end)
    end)
    
    RaidsTab:Button("Buy Chip Select",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",getgenv().SelectChip)
    end)
    
    RaidsTab:Toggle("Auto Start Go To Raid",false,function(value)
        getgenv().Auto_StartRaid = value
    end)
    
    spawn(function()
        while wait(.1) do
            pcall(function()
                if getgenv().Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if NewWorld then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif ThreeWorld then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    RaidsTab:Button("Start Go To Raid",function()
        if NewWorld then
            chichdiem(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif ThreeWorld then
            chichdiem(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end)
    RaidsTab:Button("Next Island",function()
        pcall(function()
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                chichdiem(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
            end
        end)
    end)
    
    if NewWorld then
        RaidsTab:Button("Teleport to Lab",function()
            chichdiem(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
    elseif ThreeWorld then
        RaidsTab:Button("Teleport to Lab",function()
            chichdiem(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end)
    end
    
    if NewWorld then
        RaidsTab:Button("Awakening Room",function()
            chichdiem(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
    elseif ThreeWorld then
        RaidsTab:Button("Awakening Room",function()
            chichdiem(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end)
    end
TeleportTab:Button("Teleport Sea 1",function()
	local args = {
			[1] = "TravelMain" -- OLD WORLD to NEW WORLD
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	TeleportTab:Button("Teleport To Sea 2" ,function()
		local args = {
			[1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	
	TeleportTab:Button("Teleport To Sea 3" ,function()
		local args = {
			[1] = "TravelZou" -- OLD WORLD to NEW WORLD
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	TeleportTab:Button("Teleport Quest",function()
	CheckQuest()

			wait(0.25)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
	end)
		if game.PlaceId == 2753915549 then

			TeleportTab :Button("Teleport to New World",function()
				local args = {
					[1] = "Dressrosa" -- OLD WORLD to NEW WORLD
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end)
			end
if OldWorld then
TeleportTab:Dropdown ("SelectIsland",{
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
        },function(Value)
getgenv().TELEPORTISLAND = Value
end)
end
if NewWorld then
    TeleportTab:Dropdown("SelectIsland",{
            "cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        },function(Value)
getgenv().TELEPORTISLAND = Value
end)
end
if ThreeWorld then
        TeleportTab:Dropdown("SelectIsland",{"Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island", "Floating Turtle","Room Enma/Yama & Secret Temple","House Hydar Island","Haunted Castle","Peanut Island","Ice Cream Island","CakeLoaf"},function(Value)
getgenv().TELEPORTISLAND = Value
end)
end
TeleportTab:Button("Tween",function()
if getgenv().TELEPORTISLAND == "WindMill" then
                chichdiem(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif getgenv().TELEPORTISLAND == "Marine" then
                chichdiem(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif getgenv().TELEPORTISLAND == "Middle Town" then
                chichdiem(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif getgenv().TELEPORTISLAND == "Jungle" then
                chichdiem(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif getgenv().TELEPORTISLAND == "Pirate Village" then
                chichdiem(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif getgenv().TELEPORTISLAND == "Desert" then
                chichdiem(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif getgenv().TELEPORTISLAND == "Snow Island" then
                chichdiem(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
        elseif getgenv().TELEPORTISLAND == "MarineFord" then
                chichdiem(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
        elseif getgenv().TELEPORTISLAND == "Colosseum" then
               chichdiem( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
        elseif getgenv().TELEPORTISLAND == "Sky Island 1" then
                chichdiem(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
        elseif getgenv().TELEPORTISLAND == "Sky Island 2" then
                function TP(P1,P2)
    local Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 1000 then
        Speed = 500
    elseif Distance >= 1000 then
        Speed = 500
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P2}
    ):Play()
    wait(Distance/Speed)
end

TP(Vector3.new(-4644.587890625, 872.54241943359, -1742.3826904297), CFrame.new(-4644.58789, 872.542419, -1742.38269, -0.886984944, -2.65218905e-08, -0.46179834, -4.08027745e-09, 1, -4.95946892e-08, 0.46179834, -4.210548e-08, -0.886984944))
game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("requestEntrance", Vector3.new(-7894.6176757812, 5547.1416015625, -380.29119873))
        elseif getgenv().TELEPORTISLAND == "Sky Island 3" then
                chichdiem(CFrame.new(-7994.10546875, 5756.033203125, -1942.4979248047))
        elseif getgenv().TELEPORTISLAND == "Prison" then
               chichdiem( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
        elseif getgenv().TELEPORTISLAND == "Magma Village" then
                chichdiem(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
        elseif getgenv().TELEPORTISLAND == "Under Water Island" then
                chichdiem(CFrame.new(3876.6374511719, 5.3731470108032, -1896.9306640625))
        elseif getgenv().TELEPORTISLAND == "Fountain City" then
                chichdiem(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
        elseif getgenv().TELEPORTISLAND == "Shank Room" then
                chichdiem(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
        elseif getgenv().TELEPORTISLAND == "Mob Island" then
                chichdiem(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
        elseif getgenv().TELEPORTISLAND == "cafe" then
                chichdiem(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
        elseif getgenv().TELEPORTISLAND == "Frist Spot" then
                chichdiem(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
        elseif getgenv().TELEPORTISLAND == "Dark Area" then
                chichdiem(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
        elseif getgenv().TELEPORTISLAND == "Flamingo Mansion" then
                chichdiem(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
        elseif getgenv().TELEPORTISLAND == "Flamingo Room" then
                chichdiem(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
        elseif getgenv().TELEPORTISLAND == "Green Zone" then
               chichdiem( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
        elseif getgenv().TELEPORTISLAND == "Factory" then
                chichdiem(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
        elseif getgenv().TELEPORTISLAND == "Colossuim" then
               chichdiem( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
        elseif getgenv().TELEPORTISLAND == "Zombie Island" then
                chichdiem(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
        elseif getgenv().TELEPORTISLAND == "Two Snow Mountain" then
                chichdiem(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
        elseif getgenv().TELEPORTISLAND == "Punk Hazard" then
                chichdiem(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
        elseif getgenv().TELEPORTISLAND == "Cursed Ship" then
                chichdiem(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
        elseif getgenv().TELEPORTISLAND == "Ice Castle" then
                chichdiem(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
        elseif getgenv().TELEPORTISLAND == "Forgotten Island" then
                chichdiem(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
        elseif getgenv().TELEPORTISLAND == "Ussop Island" then
                chichdiem(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
        elseif getgenv().TELEPORTISLAND == "Mini Sky Island" then
                chichdiem(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
        elseif getgenv().TELEPORTISLAND == "Great Tree" then
                chichdiem(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
        elseif getgenv().TELEPORTISLAND == "Castle On The Sea" then
                chichdiem(CFrame.new(-5044.7612304688, 314.85876464844, -2995.3803710938))
        elseif getgenv().TELEPORTISLAND == "MiniSky" then
                chichdiem(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
        elseif getgenv().TELEPORTISLAND == "Port Town" then
                chichdiem(CFrame.new(-294.20208740234, 29.756063461304, 5395.4111328125))
        elseif getgenv().TELEPORTISLAND == "Hydra Island" then
                chichdiem(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
        elseif getgenv().TELEPORTISLAND == "Floating Turtle" then
                chichdiem(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
        elseif getgenv().TELEPORTISLAND == "Mansion" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12550.325195313, 337.51156616211, -7508.9936523438) 
         elseif getgenv().TELEPORTISLAND == "Room Enma/Yama & Secret Temple" then
                chichdiem(CFrame.new(5247, 7, 1097))
          elseif getgenv().TELEPORTISLAND == "House Hydar Island" then
                 chichdiem(CFrame.new(5245, 602, 251))
                 elseif getgenv().TELEPORTISLAND == "Haunted Castle" then
                 chichdiem(CFrame.new(-9509.34961, 142.130661, 5535.16309))
                 elseif getgenv().TELEPORTISLAND == "Peanut Island" then
                 chichdiem(CFrame.new(-2131, 38, -10106))
                 elseif getgenv().TELEPORTISLAND == "Ice Cream Island"then
                 chichdiem(CFrame.new(-950, 59, -10907))
                 elseif getgenv().TELEPORTISLAND == "CakeLoaf" then
                 chichdiem(CFrame.new(-1762, 38, -11878))
        end
end)
Misc:Toggle("Fly",false,function(b)
getgenv().fly = b
end)
spawn(function()
while wait() do
if getgenv().fly then
fly()
end
end
end)
Misc:Toggle("Soru No Cooldown",false,function(l)
getgenv().InfSoru = l
end)
spawn(function()
while wait() do
if getgenv().soru then
for i, v in pairs(getgc()) do
			if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
				for i2,v2 in pairs(debug.getupvalues(v)) do
					if type(v2) == 'table' then
						if v2.LastUse then
							repeat wait()
								setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
							until not getgenv().InfSoru
						end
					end
				end
			end
		end
end
end
end)
spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Soru then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                                for i2,v2 in next, getupvalues(v) do
                                    if typeof(v2) == "table" then
                                        repeat wait(0.1)
                                            v2.LastUse = 0
                                        until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
Misc:Toggle("Race v4",false,function(v)
getgenv().racev4 = v
end)
spawn(function()
while wait() do
if getgenv().racev4 then
racev4()
end
end
end)
Misc:Toggle("Infinite Ability",true,function(value)
        getgenv().InfAbility = value
        if value == false then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end)
    
    spawn(function()
        while wait() do
            if getgenv().InfAbility then
                InfAb()
            end
        end
    end)
    
    Misc:Toggle("Infinite Obversation Range",getgenv().InfiniteObRange,function(value)
        getgenv().InfiniteObRange = value
        local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while getgenv().InfiniteObRange do
            wait()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local VisionRadius = player.VisionRadius
            if player then
                if char.Humanoid.Health <= 0 then 
                    wait(5) 
                end
                VisionRadius.Value = math.huge
            elseif getgenv().InfiniteObRange == false and player then
                VisionRadius.Value = VS
            end
        end
    end)
    
    Misc:Toggle("Infinite Geppo",getgenv().InfGeppo,function(value)
        getgenv().InfGeppo = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
Misc:Toggle("No Cooldown Dodge",false,function(v)
getgenv().rac4 = v
end)
spawn(function()
while wait() do
if getgenv().racv4 then
NoDodgeCool()
end
end
end)
Misc:Button("Hop To Lower Player",function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end)
    
    Misc:Button("Open Devil Shop",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end)
    
    Misc:Button("Open Inventory",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
        wait(1)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    end)
    
    Misc:Button("Open Inventory Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
    end)
    
    Misc:Button("Title Name",function()
    local args = {
        [1] = "getTitles"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)

Misc:Button("Color Haki",function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
    
    Misc:Toggle("Highlight Mode",false,function(value)
        if value == true then
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
        else
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
        end
    end)
    Misc:Button("Join Pirates Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end)
    
    Misc:Button("Join Marines Team",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end)
    Misc:Button("Unlock Portal",function()
        getgenv().UnlockPortal = true
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().UnlockPortal == true then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"cannot") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().UnlockPortal == true then
                    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
                    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
                    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
                    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
                    if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)
    
    Misc:Button("Invisible",function()
        game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
    end)
    
    Misc:Button("Click TP Tool",function()
        local plr = game:GetService("Players").LocalPlayer
        local mouse = plr:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport Tool"
        tool.Activated:Connect(function()
        local root = plr.Character.HumanoidRootPart
        local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
        local offset = pos-root.Position
        root.CFrame = root.CFrame+offset
        end)
        tool.Parent = plr.Backpack
    end)
    
    Misc:Button("Stop All Tween",function()
        chichdiem(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        
    end)
local x2Code = {
        "3BVISITS",
        "UPD16",
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "StrawHatMaine",
        "Sub2OfficialNoobie",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming",
        "STRAWHATMAINE"
    }
    
    Misc:Button("Redeem All Codes",function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end)
    
    Misc:Dropdown("Selected Codes Reset stat",{"RESET_5B","SUB2GAMERROBOT_RESET1","Sub2UncleKizaru"},function(value)
        getgenv().CodeSelect = value
    end)
    
    Misc:Button("Redeem Code (Selected Codes)",function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(getgenv().CodeSelect)
    end)
    Misc:Dropdown("Select Haki State",{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
        getgenv().SelectStateHaki = value
    end)
    
    Misc:Button("Change Buso Haki State",function()
        if getgenv().SelectStateHaki == "State 0" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
        elseif getgenv().SelectStateHaki == "State 1" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
        elseif getgenv().SelectStateHaki == "State 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
        elseif getgenv().SelectStateHaki == "State 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
        elseif getgenv().SelectStateHaki == "State 4" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
        elseif getgenv().SelectStateHaki == "State 5" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
        end
    end)
    local a = game.Lighting
    local c = Instance.new("ColorCorrectionEffect", a)
    local e = Instance.new("ColorCorrectionEffect", a)
    OldAmbient = a.Ambient
    OldBrightness = a.Brightness
    OldColorShift_Top = a.ColorShift_Top
    OldBrightnessc = c.Brightness
    OldContrastc = c.Contrast
    OldTintColorc = c.TintColor
    OldTintColore = e.TintColor
    Misc:Toggle("RTX Mode",getgenv().RTXMode,function(value)
        getgenv().RTXMode = value
        if not getgenv().RTXMode then return end
        while getgenv().RTXMode do wait()
            a.Ambient = Color3.fromRGB(33, 33, 33)
            a.Brightness = 0.3
            c.Brightness = 0.176
            c.Contrast = 0.39
            c.TintColor = Color3.fromRGB(217, 145, 57)
            game.Lighting.FogEnd = 999
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
                local a2 = Instance.new("PointLight")
                a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                a2.Range = 15
                a2.Color = Color3.fromRGB(217, 145, 57)
            end
            if not getgenv().RTXMode then
                a.Ambient = OldAmbient
                a.Brightness = OldBrightness
                a.ColorShift_Top = OldColorShift_Top
                c.Contrast = OldContrastc
                c.Brightness = OldBrightnessc
                c.TintColor = OldTintColorc
                e.TintColor = OldTintColore
                game.Lighting.FogEnd = 2500
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
            end
        end
    end)
    
    Misc:Button("FPS Boost",function()
        pcall(function()
            game:GetService("Lighting").FantasySky:Destroy()
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end
            for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                if v.Name == ("Water;") then
                    v.Transparency = 1
                    v.Material = "Plastic"
                end
            end
        end)
    end)
    
    Misc:Toggle("Remove Fog",RemoveFog,function(value)
        RemoveFog = value
        if not RemoveFog then return end
        while RemoveFog do wait()
            game.Lighting.FogEnd = 9e9
            if not RemoveFog then
                game.Lighting.FogEnd = 99999
            end
        end
    end)
    
    Misc:Toggle("Remove Damage",function()
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == "DamageCounter" then   
				v:Destroy()
			end
		end
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v.Name == "DamageCounter" then   
				v:Destroy()
			end
		end
	end)
    
    Misc:Button("Unlock FPS",function()
        setfpscap(9999999)
    end)
    
     Misc:Button("Fake Skin MODE™",function()
	 spawn(function()
     pcall(function()
     while true do
     wait(.0)
     game.Players.LocalPlayer.Character.Humanoid.Health = 999999
            end
        end)
    end)
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v.ClassName == "Accessory" then
            v:Destroy()
        end
    end
    
    game.Players.LocalPlayer.Character.Pants:Destroy()
    game.Players.LocalPlayer.Character.Animate.Disabled = true 
end)
Misc:Toggle("Auto Click",autoclick,function(value)
		getgenv().AuctoClick = value
	end)
	spawn(function()
		while wait() do
			if getgenv().AuctoClick then
				Click()
			end
		end
	end)
	Misc:Toggle("Walk on Water",getgenv().WalkWater,function(value)
        getgenv().WalkWater = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if getgenv().WalkWater then
                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                        if not game:GetService("Workspace"):FindFirstChild("Water") then
                            local Water = Instance.new("Part", game:GetService("Workspace"))
                            Water.Name = "Water"
                            Water.Size = Vector3.new(20,0.5,20)
                            Water.Anchored = true
                            Water.Material = "Neon"
                            Water.Color = getgenv().Color
                            game:GetService("Workspace").Water.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        else
                            game:GetService("Workspace").Water.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        end
                    elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                        game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                    end
                else
                    if game:GetService("Workspace"):FindFirstChild("Water") then
                        game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                    end
                end
            end
        end)
    end)
    Misc:Toggle("ESP Player",false,function(value)
        getgenv().ESPPlayer = value
        while getgenv().ESPPlayer do wait()
            UpdateEspPlayer()
        end
    end)
    
    Misc:Toggle("ESP Chest",false,function(value)
        getgenv().ChestESP = value
        while getgenv().ChestESP do wait()
            UpdateChestEsp() 
        end
    end)
    
    Misc:Toggle("ESP Fruit",false,function(value)
        getgenv().DevilFruitESP = value
        while getgenv().DevilFruitESP do wait()
            UpdateBfEsp() 
        end
    end)
    
    Misc:Toggle("ESP Flower",false,function(value)
        getgenv().FlowerESP = value
        while getgenv().FlowerESP do wait()
            UpdateFlowerEsp() 
        end
    end)
    
    Misc:Toggle("ESP lsland",IslandESP,function(value)
        getgenv().IslandESP = value
        while getgenv().IslandESP do wait()
            UpdateIslandESP() 
        end
    end)
    Misc:Button("Rejoin",function()
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
	end)
	Misc:Button("Server Hop",function()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
		function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									-- delfile("NotSameServers.json")
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end
		function Teleport() 
			while wait() do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
		end
		Teleport()
	end)

	Misc:Toggle("No Clip",false,function(value)
		getgenv().NoClip = value
	end)
	if game.workspace:FindFirstChild("WaterWalk") then
		game.workspace:FindFirstChild("WaterWalk"):Destroy()
	end
	platform = Instance.new("Part")
	platform.Name = "WaterWalk"
	platform.Size = Vector3.new(math.huge, 1, math.huge)
	platform.Transparency = 1
	platform.Anchored = true
	platform.Parent = game.workspace