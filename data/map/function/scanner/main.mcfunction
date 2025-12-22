scoreboard players operation __last_valid map = __valid map
scoreboard players set __valid map 0
execute unless loaded ~ ~ ~ run return fail
scoreboard players add __sample map 1
scoreboard players set __valid map 1

data modify storage map:main chunk set value {color:[]}

scoreboard players set __cumulate_h map 0
execute if score __last_valid map matches 0 run scoreboard players set __last_y map -1000
execute if score __cx map matches 0 run scoreboard players set __last_y map -1000

execute positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
data modify storage map:main chunk.color append from storage map:main color
scoreboard players operation __cumulate_h map += __new_y map

execute positioned ~8 ~ ~ positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
data modify storage map:main chunk.color append from storage map:main color
scoreboard players operation __cumulate_h map += __new_y map

execute positioned ~ ~ ~8 positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
data modify storage map:main chunk.color append from storage map:main color
scoreboard players operation __cumulate_h map += __new_y map

execute positioned ~8 ~ ~8 positioned over world_surface positioned ~ ~-1 ~ run function map:sample/color/find_block
data modify storage map:main chunk.color append from storage map:main color
scoreboard players operation __cumulate_h map += __new_y map
execute store result score __last_y map run scoreboard players operation __cumulate_h map /= #4 calc.DSC



data modify storage run index set value {x:0,z:0}
execute store result storage run index.x int 1 run scoreboard players get __cx map
execute store result storage run index.z int 1 run scoreboard players get __cz map
function map:scanner/__insert_data with storage run index