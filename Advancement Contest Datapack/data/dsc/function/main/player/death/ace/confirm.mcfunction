execute if score elimination main matches 1.. run return run function dsc:main/player/death/eliminate/self

tag @s add aced
tag @s add __dead_prepare
tag @s remove respawning
tag @s remove spawn_locked
dialog clear @s
scoreboard players operation @s revive_time = ACE_RESPAWN_TIME main
scoreboard players reset @s died.revive_target
scoreboard players reset @s died.expected_time
tag @s remove respawn_menu

title @s times 10 70 20
title @s title {text:"团灭",color:"red"}
title @s subtitle {text:"一分半后集体复活",color:"red"}

scoreboard players operation $this team = @s team
function dsc:core/relate/team_state/aced