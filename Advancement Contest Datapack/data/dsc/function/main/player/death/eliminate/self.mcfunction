tag @s add eliminated
tag @s remove respawning
tag @s remove dead
tag @s remove __dead_prepare
tag @s remove spawn_locked
scoreboard players reset @s died.revive_target
scoreboard players reset @s died.expected_time
tag @s remove respawn_menu
dialog clear @s

title @s times 10 70 20
title @s title {text:"淘汰",color:"red"}
title @s subtitle {text:"感谢游玩",color:"red"}
gamemode spectator