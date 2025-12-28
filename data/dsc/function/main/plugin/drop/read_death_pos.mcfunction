execute store result storage run death.x double 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage run death.y double 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage run death.z double 1 run data get entity @s LastDeathLocation.pos[2]
data modify storage run death.in set from entity @s LastDeathLocation.dimension