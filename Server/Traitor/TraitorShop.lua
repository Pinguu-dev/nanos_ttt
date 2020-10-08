local TraitorTrigger = Trigger(Vector(-2700.62, -2365.31, 87.00), 250, true)

TraitorTrigger:on("BeginOverlap", function(actor)
    if(actor:GetType() ~= "Character") then return end
    local character = actor
    local player = character:GetPlayer()

    if(player == nil) then return end

    if(player:GetValue("playerRole") ~= nil and player:GetValue("playerRole") == ROLES.TRAITOR) then
        player:SetValue("playerTraitorShop", true)
        SendPlayerNotification(player, "You can open the traitor shop with 'B'")
    end
end)

TraitorTrigger:on("EndOverlap", function(actor)
    if(actor:GetType() ~= "Character") then return end 

    local character = actor
    local player = character:GetPlayer()
    if(player == nil) then return end

    if(player:GetValue("playerTraitorShop") == nil) then
        return
    end

    if(player:GetValue("playerTraitorShop") == true) then
        player:SetValue("playerTraitorShop", false)
        SendPlayerNotification(player, "You leave the traitor shop position")
    end
end)

Events:on("TraitorShop", function(player)
    if(player:GetValue("playerRole") == nil or player:GetValue("playerRole") ~= ROLES.TRAITOR) then 
        return 
    end
    if(player:GetValue("playerTraitorShop") == nil or player:GetValue("playerTraitorShop") == false) then 
        return 
    end

    Events:CallRemote("OpenTraitorShop", player, { })
end)