local IsLeanback = false

TraitorShop = WebUI("TraitorShop", "file:///UI/Shop/esx_shops/html/index.html", false)
TraitorShopVisible = false

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
