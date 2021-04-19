
local showNametag = false

Timer:SetTimeout(130, function()
	local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)
	local viewport = Render:Deproject(newViewPort)

	local trace_result = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 10000, false)

	if(trace_result.Actor) then
		local actor = trace_result.Actor
		if(actor:GetType() == "StaticMesh" and actor:GetValue("owner") ~= nil) then
			Package:Log("ITS MINE! ".. actor:GetValue("owner"):GetName())
			NanosWorld:GetLocalPlayer():SetValue("DragableObject", actor, true)
		else
			--Package:Log("NOT MINE!")
			--NanosWorld:GetLocalPlayer():SetValue("DragableObject", nil)
		end
	end

	if (trace_result.Actor) then
		local actor = trace_result.Actor

		--Package:Log("Result Type: ".. actor:GetType())

		if (actor:GetType() == "Character") then
			if(actor:GetPlayer() == NanosWorld:GetLocalPlayer()) then return end

			if (not showNametag) then
				local owner = actor:GetValue("characterOwner")

				if(NanosWorld:GetLocalPlayer():GetValue("syncedPlayerRole") == 2) then -- TRAITOR
					if(actor:GetValue("syncedPlayerRole") == 2) then
						MainHUD:CallEvent("SetNametag", { true, owner:GetName().. " <font style='color: red;'>(Traitor)</font>", "#fff", actor:GetHealth() })
					else
						MainHUD:CallEvent("SetNametag", { true, owner:GetName().. " <font style='color: green;'>(Innocent)</font>", "#fff", actor:GetHealth() })
					end

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
