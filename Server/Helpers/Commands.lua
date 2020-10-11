RegisterServerCommand("stopround", function(player, args)
	print("[Console] Round stopped by ".. player:GetName())

	Server:SendNotification("The round was stopped by admin", "error")

	TTT:StopRound()
end)

RegisterServerCommand("startround", function(player, args)
    print("[Console] Round started by ".. player:GetName())
    
	TTT:StartRound()
end)

RegisterServerCommand("kill", function(player, args)
	local character = player:GetControlledCharacter()
	if(character == nil) then return end

    print("[INFO] ".. player:GetName() .. " killed with command")

	character:SetHealth(0)    
end)

RegisterServerCommand("spawnweapons", function(player, args)
    print("[INFO] Weapons spawned by ".. player:GetName())

	SpawnWeaponsInWorld()

	player:SendNotification("You spawn all weapons in the world")
end)

RegisterServerCommand("spawnvehicles", function(player, args)
    print("[INFO] Vehicles spawned by ".. player:GetName())

	SpawnVehiclesInWorld()

	player:SendNotification("You spawn all vehicles in the world")
end)

RegisterServerCommand("destroyweapons", function(player, args)
    print("[INFO] All Weapons destroyed by ".. player:GetName())

    for i,weapon in pairs(NanosWorld:GetWeapons()) do
        weapon:Destroy()
    end
end)

RegisterServerCommand("destroyvehicles", function(player, args)
    print("[INFO] All Vehicles destroyed by ".. player:GetName())

    for i,veh in pairs(NanosWorld:GetVehicles()) do
        veh:Destroy()
    end
end)

RegisterServerCommand("setkarma", function(player, args)
    print("[INFO] ".. player:GetName() .." set his karma to ".. args[2])
    player:SetKarma(karma)
end)

RegisterServerCommand("play", function(player, args)

    local anim = args[2]

    local character = player:GetControlledCharacter()
	if(character == nil) then return end

    if(player:GetData("lastAnim") ~= "" or player:GetData("lastAnim") ~= nil) then
        character:StopAnimation("PolygonWorld::".. anim)
    end

    player:SetData("lastAnim", anim)
    
    character:PlayAnimation("PolygonWorld::".. anim, 0, true)

    player:SendNotification("[ANIMATION] PolygonWorld::".. anim)
end)

RegisterServerCommand("stop", function(player, args)
    local character = player:GetControlledCharacter()
	if(character == nil) then return end

    if(player:GetData("lastAnim") ~= "" or player:GetData("lastAnim") ~= nil) then
        character:StopAnimation("PolygonWorld::".. lastAnim)
    end

    player:SetData("lastAnim", "")
end)

RegisterServerCommand("pos", function(player, args)
    local character = player:GetControlledCharacter()
	if(character == nil) then return end

    print("[POSITION] Saved Position: ".. dump(character:GetLocation()))
    
    Server:SendChatMessage(player, "[POSITION] Saved Position: ".. dump(character:GetLocation()))
end)

RegisterServerCommand("teleport", function(player, args)
    local char = player:GetControlledCharacter()
    char:SetLocation(Vector(-2700.62, -2365.31, 87.00))
end)

RegisterServerCommand("settraitor", function(player, args)
    player:SetRole(ROLES.TRAITOR)
end)

RegisterServerCommand("setdetective", function(player, args)
    player:SetRole(ROLES.DETECTIVE)
end)

RegisterServerCommand("spawngun", function(player, args)
    -- Spawning the AK47
    local my_ak47 = NanosWorldWeapons.AK47(player:GetControlledCharacter():GetLocation(), Rotator())

    -- Adds a StaticMesh Attached with a RedDot mesh into AK47 on sight_socket bone from AK47 model. As our AK47 model already
    -- have a bone named sight_socket at the right location, we can just attach to it, otherwise we would
    -- need to set it's Attach Location to where the RedDot fits and using bone name as empty ""
    my_ak47:AddStaticMeshAttached("sight", "NanosWorld::SM_T4_Sight", "sight_socket")

    -- Makes the FOV multiplier reduces by 0.35x when ADS (aiming)
    my_ak47.SightFOVMultiplier = 0.35

    -- Sets the ADS transform offset to fit the RedDot center position,
    -- each weapon will need a different offset to fit it's sight. AK47 + RedDot best fit is Z = -15.9
    my_ak47:SetSightTransform(Vector(0, 0, -15.9), Rotator(0, 0, 0))

    player:SendPlayerMessage("You spawned a ak47 with scope")
end)