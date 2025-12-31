execute if entity @s[tag=aced] run return run dialog clear @s
execute if score $this input matches -1 run return run function dsc:main/player/death/menu/arrange
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.9 1.3
data modify storage team outpost.ztemp set value {x:0,y:0,z:0,id:-1,state:3}

scoreboard players operation $this team = @s team
function dsc:core/relate/score__team
function dsc:main/player/death/menu/__read_data with storage team misc
data modify storage run num set value {id:0}

execute store result storage run num.id int 1 run scoreboard players get $this input
function dsc:main/player/death/menu/__get_spawn_point with storage run num

execute if data storage team outpost.ztemp{state:3} run return run function dsc:main/player/death/menu/arrange


function dsc:main/player/death/op/respawn
dialog clear @s