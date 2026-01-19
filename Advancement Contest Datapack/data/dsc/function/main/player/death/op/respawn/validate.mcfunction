execute unless score @s died.revive_target matches 1.. run return fail
scoreboard players operation #time_left calc.DSC = @s died.expected_time
scoreboard players operation #time_left calc.DSC -= $gametime calc.DSC
execute unless score #time_left calc.DSC matches 0..60 run return fail

scoreboard players operation $this team = @s team
function dsc:core/relate/score__team
function dsc:main/player/death/menu/next/__read_data with storage team misc
data modify storage run num set value {id:0}

execute store result storage run num.id int 1 run scoreboard players get @s died.revive_target
function dsc:main/player/death/menu/__get_spawn_point with storage run num

execute if data storage team outpost.ztemp{state:3} run return fail
tag @s add spawn_locked
execute store result score @s died.locked_x run data get storage team outpost.ztemp.x
execute store result score @s died.locked_y run data get storage team outpost.ztemp.y
execute store result score @s died.locked_z run data get storage team outpost.ztemp.z

function dsc:main/player/death/menu/close