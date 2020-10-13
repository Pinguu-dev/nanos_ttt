
local showNametag = false

Timer:SetTimeout(200, function()
	local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)	
	local viewport = Render:Deproject(newViewPort)

	local trace_result = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 10000, false)

	if (trace_result.Actor) then
		local actor = trace_result.Actor		 

		if (actor:GetType() == "Character") then	
			if(actor:GetPlayer() == NanosWorld:GetLocalPlayer()) then return end

			if (not showNametag) then
				local owner = actor:GetValue("characterOwner")		  
				MainHUD:CallEvent("SetNametag", { true, owner:GetName(), "#fff", actor:GetHealth() })
				showNametag = true
			end
		end
	elseif (showNametag) then
		MainHUD:CallEvent("SetNametag", {false})
		showNametag = false
	end
end)