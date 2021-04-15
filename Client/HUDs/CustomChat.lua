ChatUI = WebUI("ChatUI", "file:///UI/CustomChat/index.html", true)

Chat = {
	active = true,
	inputOpened = false
}

Package:Subscribe("Load", function()
	Client:SetChatVisibility(false)
end)

NanosWorld:Subscribe("SpawnLocalPlayer", function(local_player)
	Client:SetChatVisibility(false)
end)

Events:Subscribe("Chat_SendMessage", function(message) 
	ChatUI:CallEvent("PushChat", { message })
end)

ChatUI:Subscribe("CommandExecute", function(command)
	Events:CallRemote("Chat_SV_CommandExecute", { command })
end)

ChatUI:Subscribe("ChatMessage", function(text)
	Events:CallRemote("Chat_SV_CheckMessage", { text })
	Chat.inputOpened = false
end)

ChatUI:Subscribe("ChangeChatState", function(state)
	local char = NanosWorld:GetLocalPlayer():GetControlledCharacter()

	if(state == true) then		
		if(char ~= nil) then 
			char:SetMovementEnabled(false)
			Package::Log("Movement disabled, Chat open")
		end
	else
		if(char ~= nil) then 
			char:SetMovementEnabled(true)
			Package::Log("Movement again enabled, Chat closed")
		end
	end


	Chat.inputOpened = state
end)

Client:Subscribe("KeyUp", function(KeyName, _, _)
	if(KeyName == "T" and Chat.active == true and Chat.inputOpened == false) then
		ChatUI:CallEvent("CallEnableChatInput", {})
		Chat.inputOpened = true
		
		ChatUI:SetFocus()
		ChatUI:BringToFront()
	end	

	if(KeyName == "Escape" and Chat.active == true and Chat.inputOpened == true) then
		ChatUI:CallEvent("CloseChatInput", {})
		Chat.inputOpened = false
	end	
end)
