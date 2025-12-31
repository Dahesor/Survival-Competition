scoreboard players add @s trigger.pairs 1
execute if score @s trigger.pairs matches 16.. run return run advancement grant @s only dsc_adv:husbandry/bred_all_animals

data modify storage run int set value {i:0}
execute store result storage run int.i int 1 run scoreboard players get @s trigger.pairs
function dsc:module/adv/trigger/__bred_all_animals with storage run int