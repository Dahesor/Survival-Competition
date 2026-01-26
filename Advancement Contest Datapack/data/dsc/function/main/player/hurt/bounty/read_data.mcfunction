tag @s remove __killed
scoreboard players operation #attacker UID = @s last_hurt_by
scoreboard players operation $this UID = @s UID
scoreboard players operation $this player_bounty = @s player_bounty
scoreboard players operation $this team = @s team

function dsc:main/player/hurt/bounty/find

scoreboard players operation @s player_bounty = $this player_bounty
function dsc:main/player/hurt/bounty/update