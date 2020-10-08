Package:RequirePackage("commandhandler")

RegisterClientCommand("startround", function(args)
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("StartRound", { })    
end)

RegisterClientCommand("stopround", function(args)

    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("StopRound", { })
    
end)

RegisterClientCommand("kill", function(args)

    Events:CallRemote("KillMyself", { })
    
end)

RegisterClientCommand("destroyweapons", function(args)
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("DestroyAllWeapons", {})
end)

RegisterClientCommand("destroyvehicles", function(args)
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("DestroyAllVehicles", {})
end)

RegisterClientCommand("spawnweapons", function(args)
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("SpawnWeapons", {})
end)

RegisterClientCommand("spawnvehicles", function(args)    
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("SpawnVehicles", {})
end)

RegisterClientCommand("respawnall", function(args)
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("RespawnAll", {})
end)

RegisterClientCommand("setkarma", function(args)
    local player = NanosWorld:GetLocalPlayer();

    if(player:GetName() ~= "EinfachMax") then
        Events:CallRemote("SendNoti", { "You can't use this command", "error" })
    end

    Events:CallRemote("SetPlayerKarma", { tonumber(args[2]) })
end)

sound = nil

RegisterClientCommand("test", function(args)

    if(sound ~= nil) then
        sound:Stop()
        sound = nil
    end

    sound = Sound(
        Vector(2400.000000,-10000.000000,0.000000),
        "PolygonWorld::Danke",
        false,
        false,
        0,
        1,
        1,
        400,
        3600,
        0,
        true
    )
    sound:SetLowPassFilter(tonumber(args[2]))
end)

RegisterClientCommand("testlight", function(args)
    Events:CallRemote("SendTestLight", { })
end)

RegisterClientCommand("destroylight", function()
    Events:CallRemote("Destroylight", {})
end)

RegisterClientCommand("play", function(args)
    Events:CallRemote("PlayAnimByCmd", { args[2] })
end)

RegisterClientCommand("stop", function()
    Events:CallRemote("StopAnimByCmd", { })
end)

RegisterClientCommand("wep", function()
    Events:CallRemote("TestWep", {})
end)