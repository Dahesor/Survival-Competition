data modify storage map:main main.data append from storage run l
scoreboard players add $it map 1
execute if score $it map < size map run function map:init/z