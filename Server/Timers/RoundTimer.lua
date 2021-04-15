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

			Game:SendNotification("Innocent have won the round, the time is over.", "success")

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
			
			-- Rollen verteilen

			local player_count = #NanosPlayer

			if(player_count < 2) then
				TTT.match_state = WARM_UP
				Game:SendNotification("Not enough players to start a round", "error")
				return
			end
				
			local player_list = {}
			for k, player in pairs(NanosPlayer) do
				math.randomseed(os.time())
				local pos = math.random(1, #player_list + 1)
				table.insert(player_list, pos, player)
			end
			
			local traitor_count = math.ceil(player_count * TTTSettings.percent_traitors)
			local detective_count = math.ceil(player_count * TTTSettings.percent_detectives)

			for k, player in pairs(player_list) do
				if (k <= traitor_count) then
					player:SetRole(ROLES.TRAITOR)				
					print("[INFO] ".. player:GetName() .." is traitor")
				elseif (player_count >= TTTSettings.min_players_detectives and k <= traitor_count + detective_count) then
					player:SetRole(ROLES.DETECTIVE)	
					print("[INFO] ".. player:GetName() .." is detective")
				else
					player:SetRole(ROLES.INNOCENT)	
				end

				-- Charakter Einstellungen

				player:SetGodmode(false)					
               			Events:CallRemote("ResetHeal", player, { 100 })

				-- Ende

				print(player)
			end				
			-- Ende
				
			for i,player in pairs(NanosPlayer) do
				if(player:GetRole() == ROLES.TRAITOR) then
						
					-- Find all Traitors
					for a,traitors in pairs(NanosPlayer) do
						if(traitors:GetRole() == ROLES.TRAITOR and traitors ~= player) then
							player:SetHighlight(true, self:GetControlledCharacter(), Color(1, 0.25, 0, 0) * 10)		
						end
					end
					
				end
			end

		end
	end
	-- End Timer Funktion
end)
