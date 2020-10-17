Radar = {
	UI = WebUI("Radar", "file:///UI/TraitorRadar/index.html", false),
	Enabled = false,
	currentX = 0,
	currentY = 0,
	radarLocations = { }
}

Events:on("ShowRadar", function()
	SetRadarVisible(true)
end)

function SetRadarVisible(state)
	Radar.UI:SetVisible(state)
	Radar.Enabled = state

	UpdatePlayerLocations()
end

Timer:SetTimeout(10000, function()
	if(Radar.Enabled == false) then return end

	UpdatePlayerLocations()
end)

function UpdatePlayerLocations()
	Radar.radarLocations = { }

	Radar.UI:CallEvent("RemoveAllRadarPoints", {})

	for i,player in pairs(Player) do
		if(player ~= NanosWorld:GetLocalPlayer()) then
			local char = player:GetControlledCharacter()
			if(char ~= nil) then
			
				table.insert(Radar.radarLocations, { ["ID"] = player:GetID(), ["Vector"] = char:GetLocation() })

				Radar.UI:CallEvent("AddRadarPoint", { player:GetID() })
				Package:Log("Add Location for ".. player:GetName())
			end
		end
	end
end


Timer:SetTimeout(50, function() 
	if(Radar.Enabled == false) then return end

	for i,location in pairs(Radar.radarLocations) do	
		local screenLocation = Render:Project(location.Vector)
		Radar.UI:CallEvent("UpdateRadarPosition", { location.ID, screenLocation.X - 80, screenLocation.Y - 80 })
	end

end)

