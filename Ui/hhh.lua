if game:GetService("CoreGui"):FindFirstChild("YEU YAMA") then
 game:GetService("CoreGui"):FindFirstChild("YEU YAMA"):Destroy()
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
        elseif MyLevel == 2275 or MyLevel <= 2300 then

            Ms = "Head Baker [Lv. 2275]"

            NaemQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
         elseif MyLevel == 2300 or Level <= 2324 then
               Ms = "Cocoa Warrior [Lv. 2300]"
               LevelQuest = 1
               NaemQuest = "ChocQuest1"
               NameMon = "Cocoa Warrior"
               CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
               CFrameMon = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
            elseif MyLevel == 2325 or Level <= 2349 then
               Ms = "Chocolate Bar Battler [Lv. 2325]"
               LevelQuest = 2
               NaemQuest = "ChocQuest1"
               NameMon = "Chocolate Bar Battler"
              CFrameQuest = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
              CFrameMon = CFrame.new(231.742981, 25.3354111, -12199.0537, 0.998278677, -5.16006757e-08, 0.0586484075, 4.79685092e-08, 1, 6.33390442e-08, -0.0586484075, -6.04167383e-08, 0.998278677)
              elseif MyLevel == 2350 or Level <= 2374 then
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
              CFrameMon = CFrame.new(149.867218, 24.8196201, -12775.5283, -0.0371122323, -7.14229245e-08, -0.99931109, -6.93553162e-08, 1, -6.88964548e-08, 0.99931109, 6.6750637e-08, -0.0371122323)
        end
    end
end

function EquipWeapon(ToolSe) if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) wait(.4)
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)end end

local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/kickTh/New-Ui/main/ABC_Ui.txt'))()

local win = UILib:Window("BESTXEMCHUA HUB",Color3.fromRGB(6, 252, 206), Enum.KeyCode.RightControl)
local AutoFarm = win:Tab("Main")
local Stat = win:Tab("Stats")
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
local Chich = AutoFarm:Toggle("Auto Set Spawn Points",true,function(value)
        getgenv().AutoSetSpawn = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if getgenv().AutoSetSpawn then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end
            end
        end)
    end)
 
AutoFarm:Toggle("Auto Farm",false,function(vu)
    getgenv().AutoFarm= vu
end)
spawn(function()
		while wait() do
			if getgenv().AutoFarm then
				TP()
				AutoQuest()
			end
		end
	end)
	game:GetService("RunService").Heartbeat:Connect(
	function()
		if getgenv().NoClip or getgenv().AutoFarm or getgenv().Observation or getgenv().AutoNew or getgenv().Factory or getgenv().GunMastery or getgenv().Mastery or FramBoss or FramAllBoss or getgenv().AutoBartilo or getgenv().MobAura or getgenv().AutoRengoku or getgenv().AutoSharkman or getgenv().Ectoplasm or getgenv().PoleHop or getgenv().SwanHop or getgenv().BlackBeardHop or getgenv().Chest or getgenv().Electro or rainbowhaki or Hunter or observationv2 or getgenv().ElitehuntHop or getgenv().EliteHunt or getgenv().Pole or getgenv().Tushitahop or getgenv().YamaHop or getgenv().StoreFruit or getgenv().HolyTorch then
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
            TP()
            AutoQuest()
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
function Tp()
    local mob = game:GetService("Workspace").Enemies:GetChildren()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
        for i,v in pairs(mob) do
            if v.Name == Ms then
               if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
               end
               game.Players.LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(2, 2.02, 1)
			   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			   chichdiem(v.HumanoidRootPart.CFrame * CFrame.new(0,12,4))
			   EquipWeapon(getgenv().tool)
			   game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(1280,1,0,1280))
            end
            end
        end
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
	