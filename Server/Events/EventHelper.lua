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