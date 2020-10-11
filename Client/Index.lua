Package:Require("KeyHandler.lua")
Package:Require("HUDs/TTT_Overlay.lua")
Package:Require("HUDs/MainHud.lua")
Package:Require("Traitor/TraitorShop.lua")
Package:Require("Test.lua")

World:SpawnDefaultSun()

-- Sets the same time for everyone
local gmt_time = os.date("!*t", os.time())
World:SetTime(12, 0)

Client:on("Chat", function(text)
	Events:CallRemote("TriggerCommandHandler", { text })
end)

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
	Package:Log("Call")
	MainHUD:CallEvent("VoiceIcon", { IsTalking })
end)

function AddNametag(player, character)
    -- Try to get it's character
    if (character == nil) then
        character = player:GetControlledCharacter()
        if (character == nil) then return end
    end

    -- Spawns the Nametag (TextRender), attaches it to the character and saves it to the player's values
    local nametag = TextRender(Vector(), Rotator(), player:GetName(), Color(1, 1, 1), 1, 0, 12, true, true)
    nametag:AttachTo(character, "", Vector(0, 0, 230), Rotator())
    player:SetValue("Nametag", nametag)
end

-- Function to remove a Nametag from  a Player
function RemoveNametag(player, character)
    -- Try to get it's character
    if (character == nil) then
        character = player:GetControlledCharacter()
        if (character == nil) then return end
    end

    -- Gets the Nametag from the player, if any, and destroys it
    local text_render = player:GetValue("Nametag")
    if (text_render and text_render:IsValid()) then
        text_render:Destroy()
    end
end

-- Adds a new Nametag to a character which was possessed
Character:on("Possessed", function(character, player)
    AddNametag(player, character)
end)

-- Removes the Nametag from a character which was unpossessed
Character:on("UnPossessed", function(character, player)
    RemoveNametag(player, character)
end)

-- When a Player is spawned - for when you connect and there is already Player's connected
Player:on("Spawn", function(player)
    RemoveNametag(player)
	AddNametag(player)
end)