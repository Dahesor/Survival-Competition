data modify storage run char set from storage map:main dec_temp[0].char
execute if data storage run {char:"~"} run return run function map:render/dec/next

execute store result score x map run data get storage map:main dec_temp[0].x
execute store result score z map run data get storage map:main dec_temp[0].z

execute unless score __dec_in map matches 2 run scoreboard players operation x map -= origin_x map
execute unless score __dec_in map matches 2 run scoreboard players operation z map -= origin_z map
execute if score __dec_in map matches 2 run scoreboard players operation x map -= nether_x map
execute if score __dec_in map matches 2 run scoreboard players operation z map -= nether_z map

execute if score x map matches ..0 run scoreboard players set x map 0
execute if score x map matches 1025.. run scoreboard players set x map 1024
execute if score z map matches ..0 run scoreboard players set z map 0
execute if score z map matches 1025.. run scoreboard players set z map 1024

#To Pixel Space
scoreboard players operation x map *= #1000 calc.DSC
scoreboard players operation z map *= #1000 calc.DSC
scoreboard players operation x map /= #2667 calc.DSC
scoreboard players operation z map /= #2667 calc.DSC
scoreboard players operation x map -= #384 calc.DSC
scoreboard players operation x map *= #-1 calc.DSC
function map:render/player/get_text_shift

function map:render/dec/gen_text

data modify storage map:main num set value {shift:0,z:0}
scoreboard players operation z map /= #18 calc.DSC
scoreboard players add z map 1
execute if score z map matches 22.. run scoreboard players set z map 21
execute store result storage map:main num.z int 1 run scoreboard players operation z map *= #6 calc.DSC

execute if score __dec_in map matches 1 run function map:render/player/__insert_text with storage map:main num
execute if score __dec_in map matches 2 run function map:render/player/__insert_text_nether with storage map:main num
execute if score __dec_in map matches 3 run function map:render/player/__insert_text_end with storage map:main num

#Next
function map:render/dec/next