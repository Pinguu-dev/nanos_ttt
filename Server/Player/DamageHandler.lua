Character:Subscribe("TakeDamage", function(charact, damage, bone, type, from, instigator)
    if(charact:GetPlayer() == instigator) then return end
    if(charact:GetHealth() == 0) then return end
    charact:GetPlayer():SetData("TTT_LastDamager", instigator)
end)