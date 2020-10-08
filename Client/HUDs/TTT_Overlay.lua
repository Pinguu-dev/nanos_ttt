StartScreen = WebUI("StartScreen", "file:///UI/Overlay/start_screen.html", false)
terorists_won = WebUI("TerrorWon", "file:///UI/Overlay/terror_won.html", false)
inno_won = WebUI("InnoWon", "file:///UI/Overlay/inno_won.html", false)

Events:on("TTT_StartScreen", function(status)
	StartScreen:SetVisible(status)	
	
	if(status == true) then
		terorists_won:SetVisible(false)
		inno_won:SetVisible(false)		
	end
end)

Events:on("TTT_UpdateMouseStatus", function(status)
	Client:SetMouseEnabled(status)
end)

Events:on("TTT_TerrorWonScreen", function(status)
	terorists_won:SetVisible(status)
	
	if(status == true) then
		StartScreen:SetVisible(false)
		inno_won:SetVisible(false)
	end

end)

Events:on("TTT_InnoWonScreen", function(status)
	inno_won:SetVisible(status)
	
	if(status == true) then
		terorists_won:SetVisible(false)
		StartScreen:SetVisible(false)
	end
end)