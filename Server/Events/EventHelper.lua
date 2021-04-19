Events:Subscribe("LeanbackAnim", function(player, status)
	local character = player:GetControlledCharacter()
	if(character == nil) then return end

	if(status == true) then
        -- Sit
        character:PlayAnimation("PolygonWorld::StartGroundLeanBack", 0, false)
        Timer:SetTimeout(500, function()
            character:PlayAnimation("PolygonWorld::LoopGroundLeanBack", 0, true)
            return false
        end)
		player:SendNotification("You have sat down, take a minute to get your strength back")
	else
		-- Stand up
		character:StopAnimation("PolygonWorld::LoopGroundLeanBack")
		character:PlayAnimation("PolygonWorld::StopGroundLeanBack", 0, false)
		player:SendNotification("You stand up!")
	end

end)

Events:Subscribe("Viewport_SV_MoveableObject", function(player, valueTest, actor)
	actor:SetLocation(Vector(valueTest.X, valueTest.Y, valueTest.Z))
end)
