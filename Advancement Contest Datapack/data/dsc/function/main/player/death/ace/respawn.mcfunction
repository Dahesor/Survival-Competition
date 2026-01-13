function dsc:module/respawn/whole/new

data modify storage run res set value {x:0,z:0}
execute store result storage run res.x int 1 run scoreboard players get #new_x calc.DSC
execute store result storage run res.z int 1 run scoreboard players get #new_z calc.DSC

scoreboard players operation $this team = @s team
execute as @a if score @s team = $this team run function dsc:main/player/death/ace/spawn_self