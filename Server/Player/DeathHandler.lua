local progressRoundEnd = false

Character:Subscribe("Death", function(character)
	local player = character:GetPlayer()
	if(player == nil) then return end

	player:UnPossess()
	player:SetVOIPMuted(true)	
	player:SetAlive(false)
	
	if(player:GetData("TTT_LastDamager") not nil and player:GetData("TTT_LastDamager") not player) then
		player:SetSpectating(player:GetData("TTT_LastDamager"))
	end
	
	if(TTT.match_state == MATCH_STATES.IN_PROGRESS) then

		-- INNO WIN
		if(Game:GetAliveTraitors() <= 0 and progressRoundEnd == false) then
			-- Innocents haben alle Traitor getötet

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_InnoWonScreen", { true })	

			Game:SendNotification("Innocent won the round")

			Game:GiveRoleKarma(ROLES.INNOCENT, 30)
			Game:RemoveRoleKarma(ROLES.TRAITOR, 30)

			progressRoundEnd = true

			local StopRoundTimer = Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_InnoWonScreen", { false }) -- WIN wird wieder ausgeblendet
				progressRoundEnd = false
				Game:StopRound()
				return false
			end)

			return
		end

		-- TRAITOR WIN
		if(player:GetRole() == ROLES.INNOCENT and progressRoundEnd == false and Game:GetAliveInnocents() <= 0) then

			Events:BroadcastRemote("UpdatePlayerFraction", { -1 })
			Events:BroadcastRemote("TTT_TerrorWonScreen", { true })	

			Game:SendNotification("Traitors won the round")

			Game:GiveRoleKarma(ROLES.TRAITOR, 30)
			Game:RemoveRoleKarma(ROLES.INNOCENT, 30)

			progressRoundEnd = true
	
			local StopRoundTimer = Timer:SetTimeout(5000, function()
				Events:BroadcastRemote("TTT_TerrorWonScreen", { false }) -- Win wird wieder ausgeblendet	
				progressRoundEnd = false
				Game:StopRound()
				return false
			end)

			return
		end

		-- INNOCENT TÖTET UNSCHULDIGEN
		if(player:GetRole() ~= ROLES.TRAITOR) then

			local lastDamagePlayer = player:GetData("TTT_LastDamager")
            		if(lastDamagePlayer == nil or lastDamagePlayer == player) then return end			

			if(lastDamagePlayer:GetRole() ~= ROLES.INNOCENT) then return end
			lastDamagePlayer:RemoveKarma(50) -- Innocent der diesen Spieler getötet hat, verliert 50 Karma
           		lastDamagePlayer:SendNotification("You lost 50 Karma because you killed a innocent")
		end		
	end
end)
