Package:Require("KeyHandler.lua")
Package:Require("Commands/CommandHandler.lua")
Package:Require("TTT_Overlay.lua")

World:SpawnDefaultSun()

-- Sets the same time for everyone
local gmt_time = os.date("!*t", os.time())
World:SetTime(12, 0)

-- Spawns a WebUI with the HTML file you just created
MainHUD = WebUI("Main HUD", "file:///UI/HUD/index.html", true)

Client:on("Chat", function(text)
	Package:Log("triggerIt")
	Events:CallRemote("TriggerCommandHandler", { text })
end)

Events:on("UpdatePlayerFraction", function(fraction)
	MainHUD:CallEvent("UpdateFraction", { fraction })
	-- 0 = Preparing - 1 = Innocent - 2 = Traitor - 3 = Round Over
end)

Events:on("UpdatePlayerKarma", function(karma)
	MainHUD:CallEvent("UpdateKarma", { karma })
end)

Events:on("SendNoti", function(text, art)
	MainHUD:CallEvent("SendNotification", { text, art })
end)

Events:on("UpdateRoundTimer", function(time)
	MainHUD:CallEvent("UpdateRoundTimer", { time })
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
	if(IsTalking) then
		Package:Log("Du redest")
	else
		Package:Log("Du hast aufgehört zu redne")
	end
end)

-- When LocalPlayer spawns, sets an event on it to trigger when we possesses a new character, to store the local controlled character locally. This event is only called once, see Package:on("Load") to load it when reloading a package
NanosWorld:on("SpawnLocalPlayer", function(local_player)
	local_player:on("Possess", function(character)
		UpdateLocalCharacter(character)
	end)
end)

-- When package loads, verify if LocalPlayer already exists (eg. when reloading the package), then try to get and store it's controlled character
Package:on("Load", function()
	if (NanosWorld:GetLocalPlayer() ~= nil) then
		UpdateLocalCharacter(NanosWorld:GetLocalPlayer():GetControlledCharacter())
	end
end)

Events:on("ResetHeal", function(heal)
	Timer:SetTimeout(5000, function()
		local character = NanosWorld:GetLocalPlayer():GetControlledCharacter()
		if(character ~= nil) then 
			UpdateHealth(heal)
			return false
		end
	end)
end)

-- Function to set all needed events on local character (to update the UI when it takes damage or dies)
function UpdateLocalCharacter(character)
	-- Verifies if character is not nil (eg. when GetControllerCharacter() doesn't return a character)
	if (character == nil) then return end

	-- Updates the UI with the current character's health
	UpdateHealth(character:GetHealth())

	-- Sets on character an event to update the health's UI after it takes damage
	character:on("TakeDamage", function(damage, type, bone, from_direction, instigator)
		UpdateHealth(character:GetHealth())
	end)

	-- Sets on character an event to update the health's UI after it dies
	character:on("Death", function()
		UpdateHealth(0)
	end)

	-- Try to get if the character is holding any weapon
	local current_picked_item = character:GetPicked()

	-- If so, update the UI
	if (current_picked_item and current_picked_item:GetType() == "Weapon") then
		UpdateAmmo(true, current_picked_item:GetAmmoClip(), current_picked_item:GetAmmoBag())
	end

	-- Sets on character an event to update his grabbing weapon (to show ammo on UI)
	character:on("PickUp", function(object)
		if (object:GetType() == "Weapon") then
			UpdateAmmo(true, object:GetAmmoClip(), object:GetAmmoBag())
		end
	end)

	-- Sets on character an event to remove the ammo ui when he drops it's weapon
	character:on("Drop", function(object)
		UpdateAmmo(false)
	end)

	-- Sets on character an event to update the UI when he fires
	character:on("Fire", function(weapon)
		UpdateAmmo(true, weapon:GetAmmoClip(), weapon:GetAmmoBag())
	end)

	-- Sets on character an event to update the UI when he reloads the weapon
	character:on("Reload", function(weapon, ammo_to_reload)
		UpdateAmmo(true, weapon:GetAmmoClip(), weapon:GetAmmoBag())
	end)
end

-- Function to update the Ammo's UI
function UpdateAmmo(enable_ui, ammo, ammo_bag)
	MainHUD:CallEvent("UpdateWeaponAmmo", {enable_ui, ammo, ammo_bag})
end

-- Function to update the Health's UI
function UpdateHealth(health)
	MainHUD:CallEvent("UpdateHealth", {health})
end

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