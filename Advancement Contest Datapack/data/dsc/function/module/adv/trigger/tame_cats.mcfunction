scoreboard players add @s trigger.tame_cats 1
execute if score @s trigger.tame_cats matches 8.. run return run advancement grant @s only dsc_adv:husbandry/complete_catalogue

data modify storage run int set value {i:0}
execute store result storage run int.i int 1 run scoreboard players get @s trigger.tame_cats
function dsc:module/adv/trigger/__tame_cats with storage run int