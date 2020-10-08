Events:on("LeanbackAnim", function(player, status)
	local character = player:GetControlledCharacter()
	if(character == nil) then return end

	if(status == true) then
        -- Sit
        character:PlayAnimation("PolygonWorld::StartGroundLeanBack", 0, false)
        Timer:SetTimeout(500, function()
            character:PlayAnimation("PolygonWorld::LoopGroundLeanBack", 0, true)
            return false
        end)		
		SendPlayerNotification(player, "You have sat down, take a minute to get your strength back")
	else
		-- Stand up
        character:StopAnimation("PolygonWorld::LoopGroundLeanBack")
        character:PlayAnimation("PolygonWorld::StopGroundLeanBack", 0, false)
		SendPlayerNotification(player, "You stand up!")
	end

end)

-- Green Light = Vector(-7193, 745, 208)
-- Red Light = Vector(-7193,802,208)
-- Trigger = Vector(-7225,761,53)

MyLight = nil

Events:on("SendTestLight", function(player)

    print("hii")
    

    MyLight = Light(
        Vector(-7193, 745, 208),
        Rotator(0, 90, 90), -- Relevant only for Rect and Spot light types
        Color(0, 1, 0), -- Red Tint
        0, -- Point Light type
        50, -- Intensity
        250, -- Attenuation Radius
        0, -- Source Radius (Relevant only for Spot and Point light types)
        0, -- Source Soft Radius (Relevant only for Spot and Point light types)
        false, -- Cast Shadows?
        true -- Enabled?
    )
    
end)

Events:on("Destroylight", function()
    MyLight:Destroy()
end)

Events:on("StartRound", function(player)
    print("[Console] Round started by ".. player:GetName())

	StartRound(player)
end)

Events:on("StopRound", function(player)
	print("[Console] Round stopped by ".. player:GetName())

	SendNotification("The round was stopped by admin", "error")

	StopRound(player)
end)

Events:on("KillMyself", function(player)

	print("[INFO] ".. player:GetName() .. " killed with command")

	local character = player:GetControlledCharacter()
	if(character == nil) then return end

	character:SetHealth(0)
end)

Events:on("SpawnWeapons", function(player)
	print("[INFO] Weapons spawned by ".. player:GetName())

	SpawnWeaponsInWorld()

	SendPlayerNotification(player, "You spawn all weapons in the world")
end)

Events:on("SpawnVehicles", function(player)
	print("[INFO] Vehicles spawned by ".. player:GetName())

	SpawnVehiclesInWorld()

	SendPlayerNotification(player, "You spawn all vehicles in the world")
end)

Events:on("DestroyAllWeapons", function(player)
	print("[INFO] All Weapons destroyed by ".. player:GetName())

    for i,weapon in pairs(NanosWorld:GetWeapons()) do
        weapon:Destroy()
    end
end)

Events:on("DestroyAllVehicles", function(player)
	print("[INFO] All Vehicles destroyed by ".. player:GetName())

    for i,veh in pairs(NanosWorld:GetVehicles()) do
        veh:Destroy()
    end
end)

Events:on("RespawnAll", function(player)
    print("[INFO] All players respawned by ".. player:GetName())
    SendNotification("[INFO] All players respawned by ".. player:GetName())

    local characters = NanosWorld:GetCharacters()
    for i,char in pairs(characters) do
        char:Destroy()
    end

    char = Character(spawn_locations[math.random(#spawn_locations)], Rotator(), character_meshes[math.random(#character_meshes)])
    player:Possess(char)
end)

Events:on("OnTakeDamage", function(player, charact, damage, bone, type, from, instigator)
    if(player == instigator) then return end -- Wenn Spieler sich selber Schaden zugefügt hat
    if(charact:GetHealth() == 0) then return end -- Wenn der Spieler bereits gestorben ist

    player:SetValue("TTT_LastDamager", instigator)

    if(player == currentTraitor) then
        GiveKarma(instigator, 1)
    end

    if(player ~= currentTraitor) then
        if(instigator == currentTraitor) then
            GiveKarma(instigator, 2)
        end

        if(instigator ~= currentTraitor) then
            RemoveKarma(instigator, 2)
        end
    end
    
end)

Events:on("SetPlayerKarma", function(player, karma)
    SetKarma(player, karma)
end)

Events:on("GivePlayerGrenate", function(player)

    local char = player:GetControlledCharacter()

    local NewGrenade = Grenade(
        char:GetLocation(),
        Rotator(0, 90, 90),
        "NanosWorld::SM_Grenade_G67"
      )
end)

lastAnim = ""

Events:on("PlayAnimByCmd", function(player, anim)

    local character = player:GetControlledCharacter()

    if(player:GetValue("lastAnim") ~= "" or player:GetValue("lastAnim") ~= nil) then
        character:StopAnimation("PolygonWorld::".. lastAnim)
    end

    player:SetValue("lastAnim", anim)
    
    character:PlayAnimation("PolygonWorld::".. lastAnim, 0, true)
end)

Events:on("StopAnimByCmd", function(player)
    local character = player:GetControlledCharacter()

    if(player:GetValue("lastAnim") ~= "" or player:GetValue("lastAnim") ~= nil) then
        character:StopAnimation("PolygonWorld::".. lastAnim)
    end

    player:SetValue("lastAnim", "")
end)

Events:on("TestWep", function(player)
    local NewWeapon = Weapon(
        player:GetControlledCharacter():GetLocation(), -- Spawn Location
        Rotator(0, 90, 90),     -- Spawn Rotation
        "PolygonWorld::SK_Wep_AssaultRifle_01", -- Model
        0,                    -- Collision (Normal)
        true,                 -- Gravity Enabled
        30,                   -- Default Ammo in the Clip
        1000,                 -- Default Ammo in the Bag
        30,                   -- Clip Capacity
        30,                   -- Base Damage
        20,                   -- Spread
        1,                    -- Bullet Count (1 for common weapons, > 1 for shotguns)
        30,                   -- Ammo to Reload (Ammo Clip for common weapons, 1 for shotguns)
        20000,                -- Max Bullet Distance
        7500,                 -- Bullet Speed (visual only)
        Color(20, 10000, 0),  -- Bullet Color
        0.5,                  -- Sight's FOV multiplier
        Vector(0, 0, -14.85), -- Sight Location
        Rotator(-1, 0, 0),    -- Sight Rotation
        Vector(26, 0, 8.5),   -- Left Hand Location
        Rotator(0, 60, 90),   -- Left Hand Rotation
        Vector(-10, 0, 0),    -- Right Hand Offset
        1,                    -- Handling Mode (0. SingleHandedWeapon, 1. DoubleHandedWeapon, 2. SingleHandedMelee, 3. DoubleHandedMelee, 4. Throwable, 5. Torch)
        0.15,                 -- Cadence (1 shot at each 0.15seconds)
        true,                 -- Can Hold Use (keep pressing to keep firing, common to automatic weapons)
        false,                -- Need to release to Fire (common to Bows)
        "NanosWorld::P_Bullet_Trail_System",                       -- Bullet Trail Particle
        "NanosWorld::P_Weapon_BarrelSmoke",                        -- Barrel Particle
        "NanosWorld::P_Weapon_Shells_762x39",                      -- Shells Particle
        "NanosWorld::A_Rifle_Dry",                                 -- Weapon's Dry Sound
        "NanosWorld::A_Rifle_Load",                                -- Weapon's Load Sound
        "NanosWorld::A_Rifle_Unload",                              -- Weapon's Unload Sound
        "NanosWorld::A_AimZoom",                                   -- Weapon's Zooming Sound
        "NanosWorld::A_Rattle",                                    -- Weapon's Aiming Sound
        "NanosWorld::A_AK47_Shot",                                 -- Weapon's Shot Sound
        "NanosWorld::AM_Mannequin_Reload_Rifle",                   -- Character's Reloading Animation
        "NanosWorld::AM_Mannequin_Sight_Fire",                     -- Character's Aiming Animation
        "NanosWorld::SM_AK47_Mag_Empty"                            -- Magazine Mesh
    )
end)


