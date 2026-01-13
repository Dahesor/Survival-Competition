tag @s remove respawning
tag @s remove dead
tag @s remove dead
function dsc:main/player/death/op/__tp_to_spawn with storage team outpost.ztemp
execute at @s run playsound item.totem.use master @a ~ ~ ~ 0.9 1.3
execute at @s run particle totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 1 100 normal @a
gamemode survival