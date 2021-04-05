Events:Subscribe("OpenTraitorShop", function()
    TraitorShop:SetVisible(not TraitorShopVisible)
    Client:SetMouseEnabled(not TraitorShopVisible)
    TraitorShopVisible = not TraitorShopVisible
end)