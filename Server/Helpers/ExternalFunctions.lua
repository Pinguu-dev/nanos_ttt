function table.Count( t )
    local i = 0
    for k in pairs( t ) do i = i + 1 end
    
    return i
end

function dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end
 
function table.Random( t )
    local rk = math.random( 1, table.Count( t ) )
    local i = 1
    
    for k, v in pairs( t ) do
        if ( i == rk ) then return v, k end
        i = i + 1
    end
end

function math.randomchoice(t) 
    local keys = {}
    for key, value in pairs(table) do
        keys[#keys+1] = key
    end
    index = keys[math.random(1, #keys)]
    return table[index]
end

function Server:GetAlivePlayers() 
    local alivePlayers = 0
    for i,player in pairs(NanosPlayer) do
        if(player:GetData("playerAlive") ~= nil) then
            if(player:GetData("playerAlive") == true) then
                alivePlayers = alivePlayers + 1
            end
        end
    end

    return alivePlayers
end

function Server:SendNotification(message, type) 
    type = type or "info"
    Events:BroadcastRemote("SendNoti", { message, type })
	Events:BroadcastRemote("PlaySound", { "PolygonWorld::ClickSound" })
end

function Server:GetAliveTraitors() 
    local alivePlayers = 0
    for i,player in pairs(NanosPlayer) do
        if(player:GetAlive() == true) then
            if(player:GetRole() == ROLES.TRAITOR) then
                alivePlayers = alivePlayers + 1
            end                
        end    
    end

    return alivePlayers
end

function Server:GetAliveInnocents()  -- Detektive ist auch irgendwie Innocent
    local alivePlayers = 0
    for i,player in pairs(NanosPlayer) do
        if(player:GetAlive() == true) then
            if(player:GetRole() == ROLES.INNOCENT or player:GetRole() == ROLES.DETECTIVE) then
                alivePlayers = alivePlayers + 1
            end                
        end
    end

    return alivePlayers
end

function Server:GiveRoleKarma(role, karma) 
    for i,player in pairs(NanosPlayer) do
        if(player:GetRole() == role) then
            player:GiveKarma(karma)
        end
    end
end

function Server:RemoveRoleKarma(role, karma) 
    for i,player in pairs(NanosPlayer) do
        if(player:GetRole() == role) then
            player:RemoveKarma(karma)
        end
    end
end