scoreboard players set stage main 2
scoreboard players set drop_rate main 50
function dsc:main/announce/stages/2
function dsc:main/koh/new
execute as @a[scores={team=1..}] run loot give @s loot dsc:props/op