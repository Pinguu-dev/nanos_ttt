Timer:SetTimeout(100, function()
    if(isAiming == false) then return end

    local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)    
    local viewport = Render:Deproject(newViewPort)

    local trace_result = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 5000, true)
    
    if (trace_result.Success) then
        Client:DrawDebugPoint(trace_result.Location, Color(1, 0, 0), 1, 1)  

         if(trace_result.Actor) then
            local actor = trace_result.Actor         
            Package:Log(actor:GetType())
            if(actor:GetType() == "Character") then        -- HIT  
                Package:Log("Character")
                Client:SendChatMessage("found character")
                local owner = actor:GetValue("characterOwner")

                if(owner == nil) then
                    Client:SendChatMessage("error")
                end

                Client:SendChatMessage("Owner: ".. owner:GetName())
            end
        end
    end
end)