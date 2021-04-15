
local showNametag = false

Timer:SetTimeout(130, function()
	local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)	
	local viewport = Render:Deproject(newViewPort)

	local trace_result = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 10000, false)

	if (trace_result.Actor) then
		local actor = trace_result.Actor		 

		if (actor:GetType() == "Character") then	
			if(actor:GetPlayer() == NanosWorld:GetLocalPlayer()) then return end

			local ownRole = NanosWorld:GetLocalPlayer():GetData("playerRole")
			local actorRole = actor:GetPlayer():GetData("playerRole")
			if(ownRole == nil) then
				Package:Log("Error ownRole")		
			end
				
			if (not showNametag) then
				local owner = actor:GetValue("characterOwner")		
				if(ownRole == 2 and actorRole == 2) then
					MainHUD:CallEvent("SetNametag", { true, owner:GetName() .. " (Traitor)", "#fff", actor:GetHealth() })	
				else
					MainHUD:CallEvent("SetNametag", { true, owner:GetName(), "#fff", actor:GetHealth() })
				end
				
				showNametag = true
			end
		end
	elseif (showNametag) then
		MainHUD:CallEvent("SetNametag", {false})
		showNametag = false
	end
end)
