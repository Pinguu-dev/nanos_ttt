-- Spawn Locations
spawn_locations = {
	Vector(-2730, 2130, 130),
	Vector(-5591.487793,1699.645752,93.094238),
	Vector(-5881.487793,3759.645752,93.094238)
}

NanosWorldVehicles = {
	SUV = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_SUV", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_14")

		vehicle:SetEngineSetup(4500)
		vehicle:SetSteeringWheelSetup(Vector(0, 20, 131), 26)

		vehicle:SetWheel(0, "Wheel_Front_Left",  35, 22, 50, 20, 0.25, 2, 17, 1000, 50, 50, 10)
		vehicle:SetWheel(1, "Wheel_Front_Right", 35, 22, 50, 20, 0.25, 2, 17, 1000, 50, 50, 10)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   35, 22,  0, 20, 0.25, 2, 17, 1000, 50, 50, 10) 
		vehicle:SetWheel(3, "Wheel_Rear_Right",  35, 22,  0, 20, 0.25, 2, 17, 1000, 50, 50, 10)

		vehicle:SetDoor(0, Vector( 22, -80, 120), Vector(-18, -47, 110), Rotator(0, 0, 15), 75, -150)
		vehicle:SetDoor(1, Vector( 22,  80, 120), Vector( 5,   47, 105), Rotator(0, 0,  0), 60,  150)
		vehicle:SetDoor(2, Vector(-80, -80, 120), Vector(-60, -39,  90), Rotator(0, 0,  0), 60, -150)
		vehicle:SetDoor(3, Vector(-80,  80, 120), Vector(-60,  39,  90), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Hatchback = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Hatchback", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_01")

		vehicle:SetEngineSetup(5700)
		vehicle:SetSteeringWheelSetup(Vector(0, 27, 130), 24)

		vehicle:SetWheel(0, "Wheel_Front_Left",  26, 17, 50)
		vehicle:SetWheel(1, "Wheel_Front_Right", 26, 17, 50)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   26, 17,  0, 20, 0.25, 2, 17, 1000, 50, 20, 10, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  26, 17,  0, 20, 0.25, 2, 17, 1000, 50, 20, 10, 10)

		vehicle:SetDoor(0, Vector(25, -80, 100), Vector( 0, -47, 80), Rotator(0, 0, 10), 60, -150)
		vehicle:SetDoor(1, Vector(25,  80, 100), Vector(12,  47, 80), Rotator(0, 0,  0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	Pickup = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Pickup", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_10")
		vehicle:SetEngineSetup(5000)
		vehicle:SetSteeringWheelSetup(Vector(0, 27, 120), 24)
		vehicle:SetHeadlightsSetup(Vector(270, 0, 70))

		vehicle:SetWheel(0, "Wheel_Front_Left",  27, 18, 45, 20, 0.25, 2, 17, 1000, 50, 50, 20)
		vehicle:SetWheel(1, "Wheel_Front_Right", 27, 18, 45, 20, 0.25, 2, 17, 1000, 50, 50, 20)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   27, 18,  0, 20, 0.25, 2, 17, 1000, 50, 50, 20)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  27, 18,  0, 20, 0.25, 2, 17, 1000, 50, 50, 20)

		vehicle:SetDoor(0, Vector(  50, -75, 105), Vector(   8, -32.5,  95), Rotator(0,  0,  10), 70, -150)
		vehicle:SetDoor(1, Vector(  50,  75, 105), Vector(  25,    50,  90), Rotator(0,  0,   0), 70,  150)
		vehicle:SetDoor(2, Vector( -90, -75, 130), Vector( -90,  -115, 155), Rotator(0,  90, 20), 60, -200)
		vehicle:SetDoor(3, Vector( -90,  75, 130), Vector( -90,   115, 155), Rotator(0, -90, 20), 60,  200)
		vehicle:SetDoor(4, Vector(-195, -75, 130), Vector(-195,  -115, 155), Rotator(0,  90, 20), 60, -200)
		vehicle:SetDoor(5, Vector(-195,  75, 130), Vector(-195,   115, 155), Rotator(0, -90, 20), 60,  200)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	SportsCar = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_SportsCar", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_05")

		vehicle:SetEngineSetup(7500, 0.25, 0.1)
		vehicle:SetTransmissionSetup(true, 0.1, 1, 4, 20)
		vehicle:SetSteeringWheelSetup(Vector(0, 38, 115), 17)

		vehicle:SetWheel(0, "Wheel_Front_Left",  30, 27, 50)
		vehicle:SetWheel(1, "Wheel_Front_Right", 30, 27, 50)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   36, 37,  0, 20, 0.25, 2, 17, 1000, 0, 10, 10, 7)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  36, 37,  0, 20, 0.25, 2, 17, 1000, 0, 10, 10, 7)

		vehicle:SetDoor(0, Vector(25, -95, 100), Vector(35, -42, 55), Rotator(0, 0, -10), 75, -150)
		vehicle:SetDoor(1, Vector(25,  95, 100), Vector(35,  42, 60), Rotator(0, 0, -15), 75,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	TruckBox = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Truck_Box", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(5700)
		vehicle:SetSteeringWheelSetup(Vector(0, 41, 120), 26)
		vehicle:SetHeadlightsSetup(Vector(360, 0, 100))

		vehicle:SetWheel(0, "Wheel_Front_Left",  43, 25, 40, 20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(1, "Wheel_Front_Right", 43, 25, 40, 20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   43, 50,  0, 40, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  43, 50,  0, 40, 0.25, 2, 17, 1000, 75, 30, 10)

		vehicle:SetDoor(0, Vector(235, -100, 132), Vector(210, -56, 150), Rotator(0, 0, 20), 100, -150)
		vehicle:SetDoor(1, Vector(235,  100, 132), Vector(225,  60, 147), Rotator(0, 0, 10), 100,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
	TruckChassis = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "NanosWorld::SK_Truck_Chassis", 0, true, false, true, "NanosWorld::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(5700)
		vehicle:SetSteeringWheelSetup(Vector(0, 41, 120), 26)
		vehicle:SetHeadlightsSetup(Vector(360, 0, 100))

		vehicle:SetWheel(0, "Wheel_Front_Left",  43, 25, 40,  20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(1, "Wheel_Front_Right", 43, 25, 40,  20, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   43, 50,  0, 300, 0.25, 2, 17, 1000, 75, 30, 10)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  43, 50,  0, 300, 0.25, 2, 17, 1000, 75, 30, 10)

		vehicle:SetDoor(0, Vector(235, -100, 132), Vector(210, -56, 150), Rotator(0, 0, 20), 100, -150)
		vehicle:SetDoor(1, Vector(235,  100, 132), Vector(225,  60, 147), Rotator(0, 0, 10), 100,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,
}

-- Meshes
character_meshes = {
    "NanosWorld::SK_PostApocalyptic",
    "NanosWorld::SK_ClassicMale",
}
-- Spawn System
NanosPlayer:Subscribe("Spawn", function(player)
	-- Spieler wird gehalten solang eine Runde läuft
	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then
		-- Runde läuft bereits
		Events:CallRemote("TTT_StartScreen", player, { true })	
		Events:CallRemote("UpdatePlayerFraction", player, { -1 })	

		Timer:SetTimeout(5000, function()
			Events:CallRemote("TTT_StartScreen", player, { false })	
			return false
		end)

		player:SetVOIPChannel(1)
		player:SetVOIPSetting(VOIPSetting.Local)
		player:SetAlive(false)
		player:SetKarma(1000)

		player:SendNotification("There is currently a round running, you have to wait until the round is finished", "error")
		return
	end

	player:SendNotification("The round is started manually, wait for the round begin.")

    -- Charakter zuweisen
    local new_char = player:GetControlledCharacter()

    if(new_char == nil) then -- Spieler kontrolliert keinen Charakter mehr
        player:SpawnCharacter()
    end   

	-- Random aussehen
	player:SetVOIPChannel(1) -- Setzt den Spieler in den richtigen Voice-Chat
	player:SetVOIPSetting(VOIPSetting.Muted) -- Spieler ist nicht gestummt, er lebt!	
    
    -- Karma System
	player:SetKarma(1000)

    -- Unverwundbar machen
	player:SetGodmode(true)
	
	-- Start-Screen nur kurz anzeigen
	Events:CallRemote("TTT_StartScreen", player, { true })	
	Events:CallRemote("UpdatePlayerFraction", player, { -1 })	

	Timer:SetTimeout(5000, function()
		Events:CallRemote("TTT_StartScreen", player, { false })	
		return false
	end)

end)