data modify storage run l append value {color:[],update:1b}
scoreboard players add $it map 1
execute if score $it map < size map run function map:init/x