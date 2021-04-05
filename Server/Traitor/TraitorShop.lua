local TraitorTrigger = Trigger(Vector(-2700.62, -2365.31, 87.00), 250, true)

TraitorTrigger:Subscribe("BeginOverlap", function(actor)
    if(actor:GetType() ~= "Character") then return end
    local character = actor
    local player = character:GetPlayer()

    if(player == nil) then return end

    if(player:GetRole() == ROLES.TRAITOR) then
        player:SetData("playerTraitorShop", true)
        player:SendNotification("You can open the traitor shop with 'B'")
    end
end)

TraitorTrigger:Subscribe("EndOverlap", function(actor)
    if(actor:GetType() ~= "Character") then return end 

    local character = actor
    local player = character:GetPlayer()
    if(player == nil) then return end

    if(player:GetData("playerTraitorShop") == nil) then
        return
    end

    if(player:GetData("playerTraitorShop") == true) then
        player:SetData("playerTraitorShop", false)
        player:SendNotification("You leave the traitor shop position")
    end
end)

Events:Subscribe("TraitorShop", function(player)
    if(player:GetRole() ~= ROLES.TRAITOR) then return end
    if(player:GetData("playerTraitorShop") == nil or player:GetData("playerTraitorShop") == false) then 
        return 
    end

    Events:CallRemote("OpenTraitorShop", player, { })
end)