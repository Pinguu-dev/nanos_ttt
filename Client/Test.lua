local showNametag = false
local nametagVar = nil

function AddNametag(player, character)
    if (character == nil) then
        character = player:GetControlledCharacter()
        if (character == nil) then return end
    end

    local nametag = TextRender(Vector(), Rotator(), player:GetName().."\n~b~[DETECTIVE]", Color(1, 1, 1), 1, 0, 10, true, true)
    nametag:AttachTo(character, "", Vector(0, 0, 200), Rotator())
    nametagVar = nametag

    showNametag = true
end


function RemoveNametag()
    local text_render = nametagVar
    if (text_render and text_render:IsValid()) then
        text_render:Destroy()
    end

    showNametag = false
end


Timer:SetTimeout(200, function()
    local newViewPort = Vector2D(Render:GetViewportSize().X / 2, Render:GetViewportSize().Y / 2)    
    local viewport = Render:Deproject(newViewPort)

    local trace_result = Client:Trace(viewport.Position, viewport.Position + viewport.Direction * 1000, false)

    if(showNametag == true and not trace_result.Actor) then
        RemoveNametag()
    end

    if(trace_result.Actor and trace_result.Success) then
        local actor = trace_result.Actor         

        if(actor:GetType() == "Character") then    

            local owner = actor:GetValue("characterOwner")          
            if(showNametag == false) then
                AddNametag(actor:GetPlayer(), actor)
            end
        end
    end
end)