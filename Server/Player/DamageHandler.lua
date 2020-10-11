Character:on("TakeDamage", function(player, charact, damage, bone, type, from, instigator)
    if(player == instigator) then return end
    --if(charact:GetHealth() == 0) then return end
    player:SetData("TTT_LastDamager", instigator)
end)