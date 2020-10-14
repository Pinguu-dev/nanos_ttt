Radar = {
	UI = WebUI("Radar", "file:///UI/TraitorRadar/index.html", false),
	Enabled = false,
	currentX = 0,
	currentY = 0
}

Events:on("ShowRadar", function()
	Radar.UI:SetVisible(true)
	Radar.Enabled = true

end)


Client:on("Tick", function() 
	if(Radar.Enabled == false) then return end

	local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)	
	local viewport = Render:Deproject(newViewPort)

	for i,player in pairs(Player) do
		
		if(player ~= NanosWorld:GetLocalPlayer()) then



			local char = player:GetControlledCharacter()
			if(char ~= nil) then



				local location = char:GetLocation()
				local screenLocation = Render:Project(location)

				if(screenLocation.X > 0) then
					Radar.UI:CallEvent("setPosition", { screenLocation.X, screenLocation.Y })
				end
				
			end
		end
	end

end)

