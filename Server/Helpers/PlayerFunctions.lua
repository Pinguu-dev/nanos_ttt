--
NanosPlayer = Player
Player = inherit(DataObject)
registerElementClass("Player", Player)
--


function Player:SetGodmode(state)
	local char = self:GetControlledCharacter()
	if(char == nil) then 
		print("[ERROR] `SetGodmode` can't find the searched character'")
		return
	end

	if(state == true) then
		char:SetTeam(1)
		char:SetMaxHealth(9999)  
		char:SetHealth(9999) 
		Events:CallRemote("ResetHeal", self, { 9999 })
	else 
		char:SetTeam(0)
		char:SetMaxHealth(100)  
		char:SetHealth(100) 
		Events:CallRemote("ResetHeal", self, { 100 })
	end
end

function Player:SendNotification(text, type)
	type = type or "info"
	Events:CallRemote("SendNoti", self, { text, type })
	Events:CallRemote("PlaySound", self, { "PolygonWorld::ClickSound" })
end

function Player:SetRole(role)
    self:SetData("playerRole", role)

    if (role == ROLES.TRAITOR) then

		Server:SendChatMessage(self, "You are now the TRAITOR!")
		print("TRAITOR")

	elseif (role == ROLES.DETECTIVE) then

		Server:SendChatMessage(self, "You are now the DETECTIVE!")
		print("DETECTIVE")

	elseif (role == ROLES.INNOCENT) then

		Server:SendChatMessage(self, "You are now the INNOCENT!")
		print("INNOCENT")

    end
    
    Events:CallRemote("UpdatePlayerFraction", self, { role })
end

function Player:GetRole()
    local role = self:GetData("playerRole") or ROLES.NONE
    return role
end

function Player:SetAlive(state)
	self:SetData("playerAlive", state)
end

function Player:GetAlive()
	local alive = self:GetData("playerAlive") or false
	return alive
end

function Player:UpdateKarma()
    local currentKarma = tonumber(self:GetData("playerKarma")) or 0

    Events:CallRemote("UpdatePlayerKarma", self, { currentKarma })
    print("[INFO] Karma updated for ".. self:GetName())
end

function Player:SetKarma(karma)
    self:SetData("playerKarma", karma)
    self:UpdateKarma()
end

function Player:GiveKarma(karma)
    local currentKarma = tonumber(self:GetData("playerKarma")) or 0

    local newKarma = currentKarma + karma

    if(newKarma > 1000) then
        newKarma = 1000
    end

    self:SetData("playerKarma", newKarma)
    self:UpdateKarma()
end

function Player:RemoveKarma(karma)
    local currentKarma = tonumber(self:GetData("playerKarma")) or 0

    local newKarma = currentKarma - karma

    if(newKarma < 0) then 
        newKarma = 0
    end

    self:SetData("playerKarma", newKarma)
    self:UpdateKarma()
end

function Player:GetKarma()
	local currentKarma = tonumber(self:GetData("playerKarma")) or 0
	return currentKarma
end