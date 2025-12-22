#Run at chunk origin

scoreboard players set $r calc.DSC 0
scoreboard players set $g calc.DSC 0
scoreboard players set $b calc.DSC 0

execute positioned ~2 ~ ~2 positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
execute positioned ~6 ~ ~2 positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
execute positioned ~2 ~ ~6 positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
execute positioned ~6 ~ ~6 positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block