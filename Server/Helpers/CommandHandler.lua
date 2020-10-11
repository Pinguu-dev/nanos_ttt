local commands = {}

Events:on("Chat_SV_CommandExecute", function(player, command)
    print("command: ".. command)
    local args = splitString(string.sub(command, 1))

    if commands[args[1]] then
        commands[args[1]](player, args)
        return false
    end
end)

function splitString(string)
    local t = {}
    local i = 0

    if string == nil then
        return false
    else
        for k in string.gmatch(string, "[^%s]+") do
            i = i + 1
            t[i] = k    
        end
        return t
    end
end

function RegisterServerCommand(command, func)
	if not commands[command] then
		commands[command] = func
    else
        return false
	end
end