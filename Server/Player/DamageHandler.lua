Character:on("TakeDamage", function(player, charact, damage, bone, type, from, instigator)
    if(player == instigator or charact:GetHealth() == 0) then return end
    player:SetValue("TTT_LastDamager", instigator)
end)