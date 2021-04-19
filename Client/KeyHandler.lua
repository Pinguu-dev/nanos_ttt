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
  if(mouseDown and NanosWorld:GetLocalPlayer():GetValue("DragableObject") ~= nil) then
    local viewport_2D_center = Render:GetViewportSize() / 2
    local viewport_3D = Render:Deproject(viewport_2D_center)
    local trace_max_distance = 250
    local start_location = viewport_3D.Position
    local end_location = viewport_3D.Position + viewport_3D.Direction * trace_max_distance
    local trace_result = Client:Trace(start_location, end_location, true)

     if (trace_result.Success and trace_result.Actor:GetType() ~= "Character") then
       Events:CallRemote("Viewport_SV_MoveableObject", { (trace_result.Location + viewport_3D.Direction * 100), NanosWorld:GetLocalPlayer():GetValue("DragableObject"), delta_time })
     end
   end
end)

Client:Subscribe("MouseUp", function(key_name, mouse_x, mouse_y)
  if (key_name == "LeftMouseButton") then
    mouseDown = false
  end
end)

Client:Subscribe("MouseDown", function(key_name, mouse_x, mouse_y)
    if (key_name == "LeftMouseButton" and NanosWorld:GetLocalPlayer():GetValue("DragableObject") ~= nil) then
      mouseDown = true
    end
end)
