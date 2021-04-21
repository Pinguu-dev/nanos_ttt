local IsLeanback = false

TraitorShop = WebUI("TraitorShop", "file:///UI/Shop/esx_shops/html/index.html", false)
TraitorShopVisible = false


Client:Subscribe("KeyUp", function(KeyName, _, _)

    if (KeyName == "L") then

      if(IsLeanback == false) then
        -- Spieler hintzen
        Events:CallRemote("LeanbackAnim", { true })
        IsLeanback = true
      else
        -- Spieler aufstehen
        Events:CallRemote("LeanbackAnim", { false })
        IsLeanback = false
      end

    end


    if(KeyName == "B") then
      Events:CallRemote("TraitorShop", {})
    end

end)

Client:Subscribe("KeyDown", function(KeyName,_,_)
   --if KeyName == "H" then
   -- Events:Call("showWeaponInfo", {true})
   -- end
end)


mouseDown = false

Client:Subscribe("Tick", function(delta_time)
  if(NanosWorld:GetLocalPlayer() ~= nil) then

    local player = NanosWorld:GetLocalPlayer()


    if(mouseDown == true and player:GetValue("LookAtMovableProp") ~= nil and player:GetValue("IsDraggingProp") == nil) then -- START GRABBING

      local prop = player:GetValue("LookAtMovableProp")

      -- Die Distanz wird dem Spieler eingegeben
      local actorPos = Vector(prop:GetLocation().X, prop:GetLocation().Y, prop:GetLocation().Z)
      local playerPos = Vector(player:GetControlledCharacter():GetLocation().X, player:GetControlledCharacter():GetLocation().Y, player:GetControlledCharacter():GetLocation().Z)
      local distance = Vector.Distance(actorPos, playerPos)

      prop:SetValue("DistancePropPlayer", distance)

      -- Spieler nimmt das Objekt und bewegt es
      player:SetValue("IsDraggingProp", prop) -- Spieler setzt den Prop in das Dragging Ding

    elseif(mouseDown == true and player:GetValue("IsDraggingProp") ~= nil) then -- GRABBING

        -- Spieler bewegt jetzt das Objekt
        local prop = player:GetValue("IsDraggingProp")
        local distance = prop:GetValue("DistancePropPlayer")

        local viewport_2D_center = Render:GetViewportSize() / 2
        local viewport_3D = Render:Deproject(viewport_2D_center)
        local spawn_location = viewport_3D.Position + viewport_3D.Direction * distance

        Events:CallRemote("Viewport_SV_MoveableObject", { spawn_location, prop, delta_time })
    elseif(mouseDown == false and player:GetValue("IsDraggingProp") ~= nil) then -- STOP GRABBING

        -- Spieler hört auf das Objekt zu bewegen
        local prop = player:GetValue("IsDraggingProp")

        prop:SetValue("DistancePropPlayer", nil)
        player:SetValue("IsDraggingProp", nil)

      end
    end

end)

Client:Subscribe("MouseUp", function(key_name, mouse_x, mouse_y)
  if (key_name == "LeftMouseButton") then
    mouseDown = false
  end
end)

Client:Subscribe("MouseDown", function(key_name, mouse_x, mouse_y)
    if (key_name == "LeftMouseButton") then
      mouseDown = true
    end
end)
