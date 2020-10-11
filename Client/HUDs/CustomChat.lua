ChatUI = WebUI("ChatUI", "file:///UI/CustomChat/index.html", true)

Chat = {
	active = true,
	inputOpened = false
}

Package:on("Load", function()
	Client:SetChatVisibility(false)
end)

NanosWorld:on("SpawnLocalPlayer", function(local_player)
	Client:SetChatVisibility(false)
end)

Events:on("Chat_SendMessage", function(message) 
	ChatUI:CallEvent("PushChat", { message })
end)

ChatUI:on("CommandExecute", function(command)
	Events:CallRemote("Chat_SV_CommandExecute", { command })
end)

ChatUI:on("ChatMessage", function(text)
	Events:CallRemote("Chat_SV_CheckMessage", { text })
	Chat.inputOpened = false
end)

ChatUI:on("ChangeChatState", function(state)
	Chat.inputOpened = state
end)

Client:on("KeyUp", function(KeyName, _, _)
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