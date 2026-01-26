$scoreboard players operation #attacker UID = $(Name) last_hurt_by
$scoreboard players operation $this UID = $(Name) UID
$scoreboard players operation $this player_bounty = $(Name) player_bounty
$scoreboard players operation $this team = $(Name) team

function dsc:main/player/hurt/bounty/find

$scoreboard players operation $(Name) player_bounty = $this player_bounty