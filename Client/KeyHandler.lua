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

Client:Subscribe("MouseDown", function(key_name, mouse_x, mouse_y)
    if (key_name == "LeftMouseButton" and NanosWorld:GetLocalPlayer():GetValue("DragableObject") ~= nil) then

      Package:Log("Test.. ".. NanosWorld:GetLocalPlayer():GetValue("DragableObject"):GetType())

       local viewport_2D_center = Render:GetViewportSize() / 2
       local viewport_3D = Render:Deproject(viewport_2D_center)
       local trace_max_distance = 5000
       local start_location = viewport_3D.Position
       local end_location = viewport_3D.Position + viewport_3D.Direction * trace_max_distance
       local trace_result = Client:Trace(start_location, end_location, true)

        if (trace_result.Success) then

          -- Makes the point Red or Green if hit an Actor
          local color = Color(1, 0, 0) -- Red

          if (trace_result.Actor) then
            color = Color(0, 1, 0) -- Green

            -- Here you can check which actor you hit like
            -- if (trace_result.Actor:GetType() == "Character") then ...
            -- Currently only Character, Vehicles and Props are returned, if you want more you can request and we will add
          end

          -- Draws a Debug Point at the Hit location for 3 seconds with tickness 1
          Client:DrawDebugPoint(trace_result.Location, color, 3, 1)
          Events:CallRemote("Viewport_SV_MoveableObject", { trace_result.Location, NanosWorld:GetLocalPlayer():GetValue("DragableObject") })

        end

        Package:Log("Left Click pressed at X: " .. mouse_x .. ", Y: " .. mouse_y)
    end
end)
