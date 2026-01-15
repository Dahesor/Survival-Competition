particle portal ~ ~ ~ 0.05 0.05 0.05 0.01 20 force @a
execute if entity @s[distance=..2] run return fail
execute if entity @s[distance=..12] positioned ^ ^ ^0.7 run function dsc:main/player/misc/reverse_step