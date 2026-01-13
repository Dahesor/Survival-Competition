scoreboard players add @s trigger.kill_all_mobs 1
execute if score @s trigger.kill_all_mobs matches 30.. run return run advancement grant @s only dsc_adv:adventure/kill_all_mobs

data modify storage run int set value {i:0}
execute store result storage run int.i int 1 run scoreboard players get @s trigger.kill_all_mobs
function dsc:module/adv/trigger/__kill_all_mobs with storage run int