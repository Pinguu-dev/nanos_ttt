local IsLeanback = false

TraitorShop = WebUI("TraitorShop", "file:///UI/Shop/esx_shops/html/index.html", false)
TraitorShopVisible = false

isAiming = false

Client:on("KeyUp", function(KeyName, _, _)

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

Client:on("KeyDown", function(KeyName,_,_)
   --if KeyName == "H" then
   -- Events:Call("showWeaponInfo", {true})
   -- end
end)

Client:on("MouseDown", function(KeyName, MouseX, MouseY)
    if (KeyName == "RightMouseButton") then
        Package:Log("Right Click pressed at X: " .. MouseX .. ", Y: " .. MouseY)
        isAiming = true
    end
end)

Client:on("MouseUp", function(KeyName, MouseX, MouseY)
    if (KeyName == "RightMouseButton") then
        Package:Log("Right Click up at X: " .. MouseX .. ", Y: " .. MouseY)
        isAiming = false
    end
end)