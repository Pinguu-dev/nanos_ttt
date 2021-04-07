# nanos_ttt

A simple version of trouble in terrorist town in nanos world.
If you want to help, you can push a pull request. <3

Thanks SyedMuhammad for the help! <3
Thanks MegaThorx for help with the read-only problem and provide for the classlib

#info project is currently outdated i think. I need to update it in future :)

-- Script Infos --
```LUA
ROLES = {
	NONE = 0,
	INNOCENT = 1,
	TRAITOR = 2,
	DETECTIVE = 3
}


MATCH_STATES = {
	WARM_UP = 1,
	PREPAIRING = 2,
	IN_PROGRESS = 3,
	MATCH_OVER = 4
}
```
New functions for player
```LUA
Player:SetGodmode(Player self, boolean state)
Player:SendNotification(Player self, string message, string type) -- type is optional
Player:SendPlayerMessage(Player self, string message) -- Sends a message in the custom chat
Player:SetRole(Player self, integer bool) -- ROLES.NONE, ROLES.TRAITOR, ROLES.INNOCENT, ROLES.DETECTIVE
Player:GetRole(Player self)
Player:SetAlive(Player self, boolean state) -- Setting up only a variable for TTT
Player:GetAlive(Player self)
Player:UpdateKarma(Player self)
Player:SetKarma(Player self, integer karma)
Player:RemoveKarma(Player self, integer karma)
```
New functions for server
```LUA
Game:SendNotification(string message, string type) -- type is optional
Game:GetAlivePlayers()
Game:GetAliveTraitors()
Game:GetAliveInnocents()
Game:GiveRoleKarma(integer role, integer karma) -- ROLES.NONE, ROLES.TRAITOR, ROLES.INNOCENT, ROLES.DETECTIVE
Game:RemoveRoleKarma(integer role, integer karma) -- ROLES.NONE, ROLES.TRAITOR, ROLES.INNOCENT, ROLES.DETECTIVE
CustomChat:SendMessage(string message)
```
New TTT functions
```LUA
TTT:StartRound()
TTT:StopRound()
```
