Timer:SetTimeout(1000, function()
	if(TTT.match_state == MATCH_STATES.MATCH_OVER) then return end

	-- Timer Funktion
	if(TTT.match_state == MATCH_STATES.IN_PROGRESS or TTT.match_state == MATCH_STATES.PREPAIRING) then
		if(TTT.remaining_time <= 0) then return end

		Events:BroadcastRemote("UpdateRoundTimer", { TTT.remaining_time })

		if(TTT.remaining_time > 0) then
			TTT.remaining_time = TTT.remaining_time - 1
		end

		if(TTT.remaining_time <= 0 and TTT.match_state == MATCH_STATES.IN_PROGRESS) then
			-- Runde ist abgelaufen

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_InnoWonScreen", { true })		

			SendNotification("Innocent have won the round, the time is over.", "success")

			Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_InnoWonScreen", { false }) -- WIN wird wieder ausgeblendet

				StopRound()
				return false
			end)	
		elseif(TTT.remaining_time <= 0 and TTT.match_state == MATCH_STATES.PREPAIRING) then
			-- PREPAIRING ist abgelaufen
			Events:BroadcastRemote("PlaySound", { "PolygonWorld::RoundSound" }) -- Signalton
			
			TTT.match_state = MATCH_STATES.IN_PROGRESS
			TTT.remaining_time = TTTSettings.match_time

			if(table.Count(NanosWorld:GetPlayers()) < 2) then
				TTT.match_state = WARM_UP
				SendNotification("Not enough players to start a round")
				return
			end

			local pickedTraitor = table.Random(NanosWorld:GetPlayers())
			pickedTraitor:SetValue("playerRole", ROLES.TRAITOR)
			print("[INFO] ".. pickedTraitor:GetName() .." wurde als Traitor ausgewählt")

			Events:CallRemote("UpdatePlayerFraction", pickedTraitor, { ROLES.TRAITOR })

			for i,player in pairs(NanosWorld:GetPlayers()) do
				-- Innocent HUD 
				if(player ~= pickedTraitor) then
					Events:CallRemote("UpdatePlayerFraction", player, { ROLES.INNOCENT })
					player:SetValue("playerRole", ROLES.INNOCENT)
				end

				-- Spieler werden Neutral gesetzt
				local char = player:GetControlledCharacter()
				if(char ~= nil) then
					char:SetTeam(0)
					char:SetMaxHealth(100)  
					char:SetHealth(100) 
					
                    Events:CallRemote("ResetHeal", player, { 100 })
				end
			end
		end
	end
	-- End Timer Funktion
end)