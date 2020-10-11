Character:on("TakeDamage", function(charact, damage, bone, type, from, instigator)
    if(charact:GetPlayer() == instigator) then return end
    if(charact:GetHealth() == 0) then return end
    charact:GetPlayer():SetValue("TTT_LastDamager", instigator)
end)