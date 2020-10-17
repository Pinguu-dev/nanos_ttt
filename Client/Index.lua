Package:Require("KeyHandler.lua")
Package:Require("HUDs/MainHud.lua")
Package:Require("Traitor/TraitorShop.lua")
Package:Require("HUDs/Nametag.lua")
Package:Require("HUDs/CustomChat.lua")
--Package:Require("HUDs/TraitorRadar.lua")

World:SpawnDefaultSun()

local gmt_time = os.date("!*t", os.time())
World:SetTime(12, 0)

Events:on("SendNoti", function(text, art)
	MainHUD:CallEvent("SendNotification", { text, art })
end)

Events:on("PlaySound", function(soundFile)
	local sound = Sound(Vector(), soundFile, true, true, 1,	1, 1)
end)

Events:on("SetPlayerSpectating", function(player)
	Client:Spectate(player)
	Package:Log("spec now")
end)

Events:on("SetPlayerUnspectating", function()
	Client:Unspectate()
end)

Events:on("SetDiscordActivity", function(state, details, largeimage, largetext)
	Client:SetDiscordActivity(state, details, largeimage, largetext)
end)

Events:on("SetHighlightEnable", function(enabled, actor, color)
	if(actor == nil) then return end

	actor:SetHighlightEnabled(enabled)
	Client:SetHighlightColor(color)
end)

Player:on("VOIP", function(player, IsTalking)
	if (player == NanosWorld:GetLocalPlayer()) then
		MainHUD:CallEvent("VoiceIcon", { IsTalking })
	end
end)

function AddOwnerCharacter(player)
    local character = player:GetControlledCharacter()
    if(character == nil) then return end

    character:SetValue("characterOwner", player)
end


Character:on("Possessed", function(character, player)
    AddOwnerCharacter(player)
end)

Player:on("Spawn", function(player)
    AddOwnerCharacter(player)
end)

