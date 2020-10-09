-- Spawn Locations
spawn_locations = {
	Vector(-2730, 2130, 130),
	Vector(-5591.487793,1699.645752,93.094238),
	Vector(-5881.487793,3759.645752,93.094238)
}

-- Meshes
character_meshes = {
	"NanosWorld::SK_Male",
    "NanosWorld::SK_Female",
    "NanosWorld::SK_PostApocalyptic",
    "NanosWorld::SK_ClassicMale",
}

-- Spawn System
Player:on("Spawn", function(player)
	Server:BroadcastChatMessage("<blue>".. player:GetName() .."</> now wait for the start of the game!")

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
		player:SetVOIPMuted(true)
		player:SetAlive(false)
		player:SetKarma(1000)

		player:SendNotification("There is currently a round running, you have to wait until the round is finished", "error")
		return
	end

	player:SendNotification("The round is started manually, wait for the round begin.")

    -- Charakter zuweisen
    local new_char = player:GetControlledCharacter()

    if(new_char == nil) then -- Spieler kontrolliert keinen Charakter mehr
        local spawnLocation = spawn_locations[math.random(#spawn_locations)]

        new_char = Character(spawnLocation, Rotator(), character_meshes[math.random(#character_meshes)])
        new_char:SetInitialLocation(spawnLocation)
    
        player:Possess(new_char) -- Bindet Charakter an einen Spieler
    end   

	new_char:SetScale(Vector(0.9, 0.9, 0.9))
	
	-- Random aussehen
	player:SetVOIPChannel(1) -- Setzt den Spieler in den richtigen Voice-Chat
	player:SetVOIPMuted(false) -- Spieler ist nicht gestummt, er lebt!	
	
	-- Alive Variable
	player:SetAlive(true)
    
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