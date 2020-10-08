--[[
  ToDo
  
  Traitor Shop: (Alles kann nur einmal gekauft werden)
  - Namen verbergen
  - Radio (Soundeffekte an der Radio-Position erzeugen)
  - Leiche anzünden (unerkennlich machen) 
  - Radar (Zeigt alle 30 SEkunden die Innocents)
  - Bombe (Draht zum Entschärfen (6 Stück) und in der Leiche steht der richtige)
]]

Package:RequirePackage("NanosWorldWeapons")

-- Settings
ROLES = {
	NONE = 0,
	INNOCENT = 1,
	TRAITOR = 2
}

MATCH_STATES = {
	WARM_UP = 1,
	PREPAIRING = 2,
	IN_PROGRESS = 3,
	MATCH_OVER = 4
}

TTT = {
	remaining_time = 0,
	match_state = MATCH_STATES.WARM_UP
}

TTTSettings = {
	preparing_time = 30, -- 30 Sekunden
	match_time = 360, -- 6 Minuten
	--percent_traitors = 0.25
}

-- Importieren der unterschiedlichen Dateien
Package:Require("Helpers/ExternalFunctions.lua")
Package:Require("Helpers/MapSpawns.lua")
Package:Require("Events/EventHelper.lua")
Package:Require("Player/DeathHandler.lua")
Package:Require("Player/PlayerKarma.lua")
Package:Require("Player/SpawnHandler.lua")
Package:Require("Timers/RoundTimer.lua")
Package:Require("Detector/DetectorHandler.lua")

-- Spawn all Weapons
SpawnWeaponsInWorld()

-- Test Funktion
Server:on("Chat", function(player, text)
	print("[TEST] player ".. player:GetName() .. " | Text: ".. text)
end)

-- Charakter wird gelöscht, wenn der Charakter vom Spieler getrennt wird und er Disconnected ist
Player:on("UnPossess", function(player, character, is_player_disconnecting)
	if (is_player_disconnecting) then
		character:Destroy()
	end
end)

-- Wenn ein Spieler nicht mehr auf dem Server ist
Player:on("Destroy", function(player)
	Server:BroadcastChatMessage("<red>".. player:GetName() .."</> has left the server!")

	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then
		
		-- Wenn Terrorist das Match verlässt
		if(player:GetValue("playerRole") == ROLES.TRAITOR) then
			StopRound()
			SendNotification("The round aborted because the traitor left the game", "error")

			return
		end

		-- Runde wird beendet wenn weniger wie zwei Spieler noch dabei sind
		if(GetAlivePlayers() < 2) then
			StopRound()
			SendNotification("The round was cancelled because there are not enough players left", "error")
		end

	end
end)

function StartRound(player)

	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then -- Kann nicht gestartet werden, wenn bereits eine Runde läuft
		SendPlayerNotification(player, "You cannot start a round if a round is currently running")
		return
	end

	TTT.match_state = MATCH_STATES.PREPAIRING 
	TTT.remaining_time = TTTSettings.preparing_time

	Events:BroadcastRemote("UpdatePlayerFraction", { ROLES.NONE }) -- Spieler Rolle auf keine Rolle zurücksetzen
	Events:BroadcastRemote("PlaySound", { "PolygonWorld::RoundSound" }) -- Sound für den Rundenbeginn abspielen

	-- Karma Berechnung
	local karma = player:GetValue("playerKarma")
	local damageReduce = 1000 - tonumber(karma)
	damageReduce = damageReduce / 100

	-- Benachrichtigung
	SendNotification("A new round begins in 30 secounds. Prepare yourself.", "success")
	SendNotification("Your Karma is ".. karma ..". As a result all damage you deal is reduced by ".. damageReduce .."%", "success")
end

function StopRound(player)

	if(roundStarted == false) then
		SendPlayerNotification(player, "You cannot stop a round that has not started")
		return
	end

	SendNotification("The round is started manually, wait for the round begin.", "info")

	-- HUD wird angepasst
	Events:BroadcastRemote("UpdatePlayerFraction", { -1 }) -- Rolle wird auf "MATCH OVER" geändert
	Events:BroadcastRemote("UpdateRoundTimer", { 9999 })

	-- Die Runde wird gestoppt
	TTT.match_state = MATCH_STATES.MATCH_OVER

	-- Die Timer werden zurückgesetzt
	TTT.remaining_time = 0

	-- Die toten Charaktere werden gelöscht
	for i,character in pairs(NanosWorld:GetCharacters()) do
		if(character:IsValid()) then
			-- Charakter wird freigegeben
			if(character:GetPlayer() == nil) then
				character:Destroy()
			end		
		end
	end

	-- Jeder Spieler wird neugespawnt
	for i,player in pairs(NanosWorld:GetPlayers()) do

		player:SetVOIPMuted(false) -- Spieler darf wieder sprechen
		player:SetValue("playerAlive", true) -- Spieler ist wieder am Leben
	
		-- Charakter für die Toten erstellen
		local char = nil		
		if(player:GetControlledCharacter() == nil) then
			char = Character(spawn_locations[math.random(#spawn_locations)], Rotator(), character_meshes[math.random(#character_meshes)])
			player:Possess(char) 
		else
			char = player:GetControlledCharacter()
			--char:SetLocation(spawn_locations[math.random(#spawn_locations)])
		end

		-- Charakter wird wieder unverwundbar gesetzt
		char:SetTeam(1)
		char:SetMaxHealth(9999)  -- Ne art Godmode
		char:SetHealth(9999) -- Ne art Godmode

    	Events:CallRemote("ResetHeal", player, { 9999 })
	end
	
end
