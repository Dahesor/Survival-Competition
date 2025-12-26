#303
scoreboard players set next gen 0
scoreboard players set phase gen 302
execute if score $bastion gen matches 9.. run scoreboard players set phase gen 310

function gen:locate/core/read
execute if score warning gen matches 1.. run scoreboard players set next gen 5
execute unless score in_range gen matches 1.. run return fail

data modify storage map:main dec_temp set from storage map:main dec_nether
data modify storage map:main single_dec set value {x:0,z:0,char:"b"}
execute store result storage map:main single_dec.x int 1 run scoreboard players get x gen
execute store result storage map:main single_dec.z int 1 run scoreboard players get z gen
execute store result score $_temp gen run data get storage map:main dec_temp
execute store result score $total gen run data modify storage map:main dec_temp[] set from storage map:main single_dec

execute unless score $_temp gen = $total gen run return fail

scoreboard players add has_bastion gen 1
data modify storage map:main dec_nether append from storage map:main single_dec