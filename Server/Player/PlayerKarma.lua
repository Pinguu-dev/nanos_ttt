function UpdateKarma(player)
    local currentKarma = tonumber(player:GetValue("playerKarma"))
    if(currentKarma == nil) then return end

    Events:CallRemote("UpdatePlayerKarma", player, { currentKarma })
    print("[INFO] Karma updated for ".. player:GetName())
end

function SetKarma(player, karma)
    player:SetValue("playerKarma", karma)
    UpdateKarma(player)
end

function GiveKarma(player, karma)
    if(player == nil) then return end

    local currentKarma = tonumber(player:GetValue("playerKarma"))
    if(currentKarma == nil) then return end

    local newKarma = currentKarma + karma

    if(newKarma > 1000) then
        newKarma = 1000
    end

    player:SetValue("playerKarma", newKarma)
    UpdateKarma(player)
end

function RemoveKarma(player, karma)
    local currentKarma = tonumber(player:GetValue("playerKarma"))
    if(currentKarma == nil) then return end

    local newKarma = currentKarma - karma

    if(newKarma < 0) then 
        newKarma = 0
    end

    player:SetValue("playerKarma", newKarma)
    UpdateKarma(player)
end