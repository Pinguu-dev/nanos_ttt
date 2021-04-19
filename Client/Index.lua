Package:Require("KeyHandler.lua")
Package:Require("HUDs/MainHud.lua")
Package:Require("Traitor/TraitorShop.lua")
Package:Require("HUDs/ViewPort.lua")
Package:Require("HUDs/CustomChat.lua")
--Package:Require("HUDs/TraitorRadar.lua")

World:SpawnDefaultSun()

local gmt_time = os.date("!*t", os.time())
World:SetTime(12, 0)

Events:Subscribe("SendNoti", function(text, art)
	MainHUD:CallEvent("SendNotification", { text, art })
end)

Events:Subscribe("PlaySound", function(soundFile)
	local sound = Sound(Vector(), soundFile, true, true, 1,	1, 1)
end)

Events:Subscribe("SetPlayerSpectating", function(player)
	Client:Spectate(player)
end)

Events:Subscribe("SetPlayerUnspectating", function()
	Client:Unspectate()
end)

Events:Subscribe("SetDiscordActivity", function(state, details, largeimage, largetext)
	Client:SetDiscordActivity(state, details, largeimage, largetext)
end)

Events:Subscribe("SetHighlightEnable", function(enabled, actor, color)
	if(actor == nil) then return end

	actor:SetHighlightEnabled(enabled)
	Client:SetHighlightColor(color)
end)

Player:Subscribe("VOIP", function(player, IsTalking)
	if (player == NanosWorld:GetLocalPlayer()) then
		MainHUD:CallEvent("VoiceIcon", { IsTalking })
	end
end)

function AddOwnerCharacter(player)
    local character = player:GetControlledCharacter()
    if(character == nil) then return end

    character:SetValue("characterOwner", player)
end


Character:Subscribe("Possessed", function(character, player)
    AddOwnerCharacter(player)
end)

Player:Subscribe("Spawn", function(player)
    AddOwnerCharacter(player)
end)
