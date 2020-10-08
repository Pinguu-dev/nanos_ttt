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

function SendNotification(text, art)
	Events:BroadcastRemote("SendNoti", { text, art })
	Events:BroadcastRemote("PlaySound", { "PolygonWorld::ClickSound" })
end

function SendPlayerNotification(player, text, art)
	Events:CallRemote("SendNoti", player, { text, art })
	Events:CallRemote("PlaySound", player, { "PolygonWorld::ClickSound" })
end

function GetAlivePlayers()
    local alivePlayers = 0
    for i,player in pairs(NanosWorld:GetPlayers()) do
        if(player:GetValue("playerAlive") ~= nil) then
            if(player:GetValue("playerAlive") == true) then
                alivePlayers = alivePlayers + 1
            end
        end
    end

    return alivePlayers
end

