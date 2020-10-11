Package:Require("KeyHandler.lua")
Package:Require("HUDs/TTT_Overlay.lua")
Package:Require("HUDs/MainHud.lua")
Package:Require("Traitor/TraitorShop.lua")
Package:Require("HUDs/Nametag.lua")

World:SpawnDefaultSun()

-- Sets the same time for everyone
local gmt_time = os.date("!*t", os.time())
World:SetTime(12, 0)

Events:on("SendNoti", function(text, art)
	MainHUD:CallEvent("SendNotification", { text, art })
end)

Events:on("PlaySound", function(soundFile)
	local sound = Sound(
		Vector(), -- Location (if a 3D sound)
		soundFile, -- Asset Path
		true, -- Is 2D Sound
		true, -- Auto Destroy (if to destroy after finished playing)
		1, -- Sound Type (SFX)
		1, -- Volume
		1 -- Pitch
	)
end)

Player:on("VOIP", function(player, IsTalking)
	MainHUD:CallEvent("VoiceIcon", { IsTalking })
end)

function AddOwnerCharacter(player)
    local character = player:GetControlledCharacter()
    if(character == nil) then return end

    character:SetValue("characterOwner", player)
end


-- Adds a new Nametag to a character which was possessed
Character:on("Possessed", function(character, player)
    --AddNametag(player, character)
    AddOwnerCharacter(player)
end)

-- Removes the Nametag from a character which was unpossessed
Character:on("UnPossessed", function(character, player)
    --RemoveNametag(player, character)
end)

-- When a Player is spawned - for when you connect and there is already Player's connected
Player:on("Spawn", function(player)
   -- RemoveNametag(player)
--	AddNametag(player)
    AddOwnerCharacter(player)
end)

