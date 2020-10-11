CustomChat = {}

function CustomChat:SendMessage(message) 
	-- Send Message to all
	Events:BroadcastRemote("Chat_SendMessage", { message })
end

Events:on("Chat_SV_CheckMessage", function(player, message)
	local new_message = "<b>".. player:GetName() .."</b>: ".. message

	if(player:GetRole() == ROLES.DETECTIVE) then
		new_message = "<b style='color: #00008B'>".. player:GetName() .."</b>: ".. message
	end
	
	if(player:GetAlive() == false) then
		-- Spieler ist nicht mehr am Leben und kann sich nur noch mit jedem Unterhalten der Tot ist
		new_message = "<i>(DEAD)</i> <b style='color: grey;'>".. player:GetName() .."</b>: ".. message
		for i,pp in pairs(Players) do
			if(pp:GetAlive() == false) then
				pp:SendPlayerMessage(new_message)
			end
		end
		return
	end

	CustomChat:SendMessage(new_message)
end)