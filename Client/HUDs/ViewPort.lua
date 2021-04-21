
local showNametag = false

Timer:SetTimeout(130, function()

	local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)
	local viewport = Render:Deproject(newViewPort)
	local player = NanosWorld:GetLocalPlayer()

	-- Tracer for Object-Dragging
	local objectTracer = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 10000, CollisionChannel.WorldStatic, false, true, false, false)

	if(objectTracer.Entity and objectTracer.Success) then
		local actor = objectTracer.Entity;

		if(actor:GetType() == "StaticMesh" and actor:GetValue("DragableObject") ~= nil) then


			-- Er sieht das Objekt, er darf es jetzt bewegen!
			player:SetValue("LookAtMovableProp", actor) -- Ich schaue auf ein bewegbares Objekt und setze den Aktor in eine Value

		end
	elseif(player:GetValue("LookAtMovableProp") ~= nil) then

		player:SetValue("LookAtMovableProp", nil)

	end

	-- Tracer for Character Nametags
	local characterTracer = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 10000, CollisionChannel.Mesh, false, true, false, false)
	if(characterTracer.Entity) then
		local actor = characterTracer.Entity

		if(actor:GetType() == "Character") then

			if(actor:GetPlayer() == NanosWorld:GetLocalPlayer()) then return end

			local myRole = NanosWorld:GetLocalPlayer():GetValue("syncedPlayerRole")
			local owner = actor:GetValue("characterOwner")

			if(myRole == 2) then -- Traitor
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
	elseif (showNametag) then
		MainHUD:CallEvent("SetNametag", { false })
		showNametag = false
	end
end)
