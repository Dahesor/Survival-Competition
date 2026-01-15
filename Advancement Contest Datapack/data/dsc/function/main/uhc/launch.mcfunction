execute as @e[type=marker,tag=koh,limit=1] at @s run function dsc:main/koh/destroy
scoreboard players set $koh_loaded main -1

scoreboard players set stage main 3
scoreboard players set drop_rate main 75
scoreboard players set elimination main 1
scoreboard players set end_open main 0
function dsc:main/announce/border_shrink
function dsc:main/announce/stages/3

execute in overworld run worldborder set 1 900s
execute in the_nether run worldborder set 48 450s
schedule function dsc:main/uhc/utils/shutdown_nether 470s
execute as @a[scores={team=1..}] run loot give @s loot dsc:props/op