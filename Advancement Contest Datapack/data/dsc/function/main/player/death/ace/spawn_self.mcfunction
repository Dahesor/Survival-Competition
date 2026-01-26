tag @s remove respawning
tag @s remove dead
tag @s remove __dead_prepare
tag @s remove aced
tag @s remove spawn_locked
scoreboard players reset @s died.revive_target
scoreboard players reset @s died.expected_time
tag @s remove respawn_menu
function dsc:main/player/death/ace/__tp_spawn with storage run res
execute at @s run playsound item.totem.use master @a ~ ~ ~ 0.9 1.3
execute at @s run particle totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 1 100 normal @a
gamemode survival
effect give @s resistance 20 10
scoreboard players set @s revive_time 0