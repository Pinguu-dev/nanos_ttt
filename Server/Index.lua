Package:RequirePackage("NanosWorldWeapons")

-- Settings
ROLES = {
	NONE = 0,
	INNOCENT = 1,
	TRAITOR = 2,
	DETECTIVE = 3
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
	preparing_time = 15, 
	match_time = 360, 
	percent_traitors = 0.25,
	percent_detectives = 0.13,
	min_players_detectives = 10,
}

-- Importieren der unterschiedlichen Dateien
Package:Require("Helpers/PlayerFunctions.lua")
Package:Require("Helpers/ExternalFunctions.lua")
Package:Require("Helpers/MapSpawns.lua")
Package:Require("Helpers/ChatHandler.lua")
Package:Require("Events/EventHelper.lua")
Package:Require("Player/DeathHandler.lua")
Package:Require("Player/SpawnHandler.lua")
Package:Require("Timers/RoundTimer.lua")
Package:Require("Detector/DetectorHandler.lua")
Package:Require("Helpers/CommandHandler.lua")
Package:Require("Helpers/Commands.lua")
Package:Require("Traitor/TraitorShop.lua")
Package:Require("Player/DamageHandler.lua")

-- Spawn all Weapons
SpawnWeaponsInWorld()

-- Charakter wird gelöscht, wenn der Charakter vom Spieler getrennt wird und er Disconnected ist
NanosPlayer:on("UnPossess", function(player, character, is_player_disconnecting)
	if (is_player_disconnecting) then
		character:Destroy()
	end
end)

-- Wenn ein Spieler nicht mehr auf dem Server ist
NanosPlayer:on("Destroy", function(player)
	Server:BroadcastChatMessage("<red>".. player:GetName() .."</> has left the server!")

	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then
		
		-- Wenn Terrorist das Match verlässt
		if(player:GetRole() == ROLES.TRAITOR) then
			StopRound()
			Server:SendNotification("The round aborted because the traitor left the game", "error")
			return
		end

		-- Runde wird beendet wenn weniger wie zwei Spieler noch dabei sind
		if(Server:GetAlivePlayers() < 2) then
			StopRound()
			Server:SendNotification("The round was cancelled because there are not enough players left", "error")
		end

	end
end)

function TTT:StartRound()
	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then return end

	TTT.match_state = MATCH_STATES.PREPAIRING 
	TTT.remaining_time = TTTSettings.preparing_time

	Events:BroadcastRemote("UpdatePlayerFraction", { ROLES.NONE }) -- Spieler Rolle auf keine Rolle zurücksetzen
	Events:BroadcastRemote("PlaySound", { "PolygonWorld::RoundSound" }) -- Sound für den Rundenbeginn abspielen

	for i,player in pairs(NanosPlayer) do
		local karma = player:GetKarma()
		local damageReduce = 1000 - tonumber(karma)
		damageReduce = damageReduce / 100

		player:SendNotification("A new round begins in 30 secounds. Prepare yourself.")
		player:SendNotification("Your Karma is ".. karma ..". As a result all damage you deal is reduced by ".. damageReduce .."%")
	end	
end

function TTT:StopRound()
	if(TTT.match_state ~= MATCH_STATES.IN_PROGRESS) then return end

	Server:SendNotification("The round is started manually, wait for the round begin.")

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
	for i,player in pairs(NanosPlayer) do

		player:SetVOIPMuted(false) -- Spieler darf wieder sprechen
		player:SetAlive(true) -- Spieler ist wieder am Leben
	
		-- Charakter für die Toten erstellen
		local char = nil		
		if(player:GetControlledCharacter() == nil) then
			char = player:SpawnCharacter()
		else
			char = player:GetControlledCharacter()
			--char:SetLocation(spawn_locations[math.random(#spawn_locations)])
		end

		-- Charakter wird wieder unverwundbar gesetzt
		player:SetGodmode(true)

    	Events:CallRemote("ResetHeal", player, { 9999 })
	end
	
end
