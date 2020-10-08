local progressRoundEnd = false

Character:on("Death", function(character)
	local player = character:GetPlayer()

	if(player == nil) then
		print("[Fehler] Der Spieler im DeathHandler wurde nicht gefunden")
		return
	end

	-- Der Charakter wird von dem Spieler getrennt
	player:UnPossess()

	-- Spieler wird gestummt, er darf Tot nicht sprechen
	player:SetVOIPMuted(true)	

	-- Die aktuell überlebenden werden reduziert
	player:SetValue("playerAlive", false)
	
	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then

		if(player:GetValue("playerRole") == ROLES.TRAITOR) then
			-- Traitor ist gestorben

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_InnoWonScreen", { true })	

			SendNotification("Innocent won the round", "info")

			RemoveKarma(currentTraitor, 30) -- Traitor verliert 30 Karma    
            for i,pp in pairs(NanosWorld:GetPlayers()) do
                if(pp ~= currentTraitor) then
                    GiveKarma(pp, 30) -- Innocents bekommen 30 Karma
                end
			end

			progressRoundEnd = true

			-- Nach 5 Sekunden wird die Runde beendet
			local StopRoundTimer = Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_InnoWonScreen", { false }) -- WIN wird wieder ausgeblendet
				progressRoundEnd = false
				StopRound()
				return false
			end)	
			
			return 
		elseif(player:GetValue("playerRole") == ROLES.INNOCENT and progressRoundEnd == false and GetAlivePlayers() < 2) then
			-- Innocents sind Tot

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_TerrorWonScreen", { true })	

			SendNotification("Traitors won the round", "info")

			GiveKarma(currentTraitor, 30) -- Innocents verliert 30 Karma    
            for i,pp in pairs(NanosWorld:GetPlayers()) do
                if(pp ~= currentTraitor) then
                    RemoveKarma(pp, 30) -- Traitor bekommen 30 Karma
				else 
					pp:GetControlledCharacter():PlayAnimation("Anim_Triumph_Montage", 0, false)
				end
			end
			
			progressRoundEnd = true
	
			local StopRoundTimer = Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_TerrorWonScreen", { false }) -- Win wird wieder ausgeblendet	
				progressRoundEnd = false
				StopRound()
				return false
			end)
		else
			if(player:GetValue("playerRole") == ROLES.TRAITOR) then return end

			local lastDamagePlayer = player:GetValue("TTT_LastDamager")
            if(lastDamagePlayer == nil) then return end
            if(lastDamagePlayer == player) then return end

            RemoveKarma(lastDamagePlayer, 50) -- Innocent der diesen Spieler getötet hat, verliert 50 Karma
            SendPlayerNotification(lastDamagePlayer, "You lost 50 Karma because you killed a innocent")
		end
	end
end)