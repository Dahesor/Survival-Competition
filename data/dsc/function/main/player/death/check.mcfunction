#tp @s 0-0-0-0-0
execute if score @s revive_time matches 2.. run scoreboard players remove @s revive_time 1
execute if score @s revive_time matches 2 run tag @s add respawning
execute if score @s revive_time matches 2 run function dsc:main/player/death/menu/arrange
execute if score #loop_20 calc.DSC matches 13 if entity @s[tag=respawning] run function dsc:main/player/death/menu/arrange