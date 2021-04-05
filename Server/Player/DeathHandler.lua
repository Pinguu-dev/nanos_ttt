local progressRoundEnd = false

Character:Subscribe("Death", function(character)
	local player = character:GetPlayer()
	if(player == nil) then return end

	player:UnPossess()
	player:SetVOIPMuted(true)	
	player:SetAlive(false)
	
	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then

		-- INNO WIN
		if(Server:GetAliveTraitors() <= 0 and progressRoundEnd == false) then
			-- Innocents haben alle Traitor getötet

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_InnoWonScreen", { true })	

			Server:SendNotification("Innocent won the round")

			Server:GiveRoleKarma(ROLES.INNOCENT, 30)
			Server:RemoveRoleKarma(ROLES.TRAITOR, 30)

			progressRoundEnd = true

			local StopRoundTimer = Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_InnoWonScreen", { false }) -- WIN wird wieder ausgeblendet
				progressRoundEnd = false
				TTT:StopRound()
				return false
			end)

			return
		end

		-- TRAITOR WIN
		if(player:GetRole() == ROLES.INNOCENT and progressRoundEnd == false and Server:GetAliveInnocents() <= 0) then

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_TerrorWonScreen", { true })	

			Server:SendNotification("Traitors won the round")

			Server:GiveRoleKarma(ROLES.TRAITOR, 30)
			Server:RemoveRoleKarma(ROLES.INNOCENT, 30)

			progressRoundEnd = true
	
			local StopRoundTimer = Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_TerrorWonScreen", { false }) -- Win wird wieder ausgeblendet	
				progressRoundEnd = false
				TTT:StopRound()
				return false
			end)

			return
		end

		-- INNOCENT TÖTET UNSCHULDIGEN
		if(player:GetRole() ~= ROLES.TRAITOR) then

			local lastDamagePlayer = player:GetData("TTT_LastDamager")
            if(lastDamagePlayer == nil or lastDamagePlayer == player) then return end			
			
			player:SetSpectating(lastDamagePlayer)

			if(lastDamagePlayer:GetRole() ~= ROLES.INNOCENT) then return end
			lastDamagePlayer:RemoveKarma(50) -- Innocent der diesen Spieler getötet hat, verliert 50 Karma
            lastDamagePlayer:SendNotification("You lost 50 Karma because you killed a innocent")
		end		
	end
end)