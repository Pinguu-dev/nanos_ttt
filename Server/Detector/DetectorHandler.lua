-- Green Light = Vector(-7193, 745, 208)
-- Red Light = Vector(-7193,802,208)
-- Trigger = Vector(-7225,761,53)


local DetectorTrigger = Trigger(Vector(-7225,761,53), 100, true)
local LightIsCreated = false

DetectorTrigger:on("BeginOverlap", function(actor)
    if(actor:GetType() ~= "Character") then return end  
    if(LightIsCreated == true) then return end

    local player = actor:GetPlayer()
    if(player == nil) then return end

    local color = Color(1, 1, 1)
    local locations = Vector(-7193, 745, 208)

    local role = player:GetValue("playerRole")
    if(role == nil) then return end

    if(role == ROLES.TRAITOR) then
        color = Color(1,0,0)
        locations = Vector(-7193,802,208)
    else
        color = Color(0,1,0)
        locations = Vector(-7193, 745, 208)
    end

    local testDetectorLight = Light(
        locations,
        Rotator(0, 90, 90), 
        color, 
        0, 
        50, 
        250, 
        0, 
        0, 
        false,
        true
    )
    LightIsCreated = true

    Timer:SetTimeout(1000, function()
        testDetectorLight:Destroy()
        LightIsCreated = false
        return false
    end)

end)