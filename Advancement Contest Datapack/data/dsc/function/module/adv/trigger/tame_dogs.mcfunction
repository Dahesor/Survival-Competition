scoreboard players add @s trigger.tame_dogs 1
execute if score @s trigger.tame_dogs matches 7.. run return run advancement grant @s only dsc_adv:husbandry/whole_pack

data modify storage run int set value {i:0}
execute store result storage run int.i int 1 run scoreboard players get @s trigger.tame_dogs
function dsc:module/adv/trigger/__tame_dogs with storage run int