local NametagUI = WebUI("Nametag", "file:///UI/Nametag/index.html", false)

local showNametag = false

Timer:SetTimeout(150, function()
    local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)    
    local viewport = Render:Deproject(newViewPort)

    local trace_result = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 1000, false)

    if(showNametag == true and not trace_result.Actor) then
        NametagUI:SetVisible(false)

        showNametag = false
    end

    if(trace_result.Actor and trace_result.Success) then
        local actor = trace_result.Actor         

        if(actor:GetType() == "Character") then    

            local owner = actor:GetValue("characterOwner")          
            if(showNametag == false) then
                NametagUI:SetVisible(true)

                NametagUI:CallEvent("SetName", { owner:GetName(), "#fff" })
                NametagUI:CallEvent("SetHealthString", { actor:GetHealth() })

                actor:on("TakeDamage", function(damage, type, bone, from_direction, instigator)
                    NametagUI:CallEvent("SetHealthString", { actor:GetHealth() })
                end)

                showNametag = true
            end
        end
    end
end)