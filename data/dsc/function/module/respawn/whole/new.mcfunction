execute store result score $rand calc.DSC run random value 1..10000000
scoreboard players operation $rand calc.DSC %= main_border_size main
execute store result score $axis calc.DSC run random value 0..1
execute store result score $side calc.DSC run random value 0..1

execute if score $axis calc.DSC matches 0 run scoreboard players operation #new_x calc.DSC = $rand calc.DSC
execute if score $axis calc.DSC matches 1 run scoreboard players operation #new_z calc.DSC = $rand calc.DSC

execute if score $axis calc.DSC matches 0 run scoreboard players operation #new_x calc.DSC += current_x_min main
execute if score $axis calc.DSC matches 1 run scoreboard players operation #new_z calc.DSC += current_z_min main
execute if score $axis calc.DSC matches 1 if score $side calc.DSC matches 0 run scoreboard players operation #new_x calc.DSC = current_x_min main
execute if score $axis calc.DSC matches 1 if score $side calc.DSC matches 1 run scoreboard players operation #new_x calc.DSC = current_x_max main
execute if score $axis calc.DSC matches 0 if score $side calc.DSC matches 0 run scoreboard players operation #new_z calc.DSC = current_z_min main
execute if score $axis calc.DSC matches 0 if score $side calc.DSC matches 1 run scoreboard players operation #new_z calc.DSC = current_z_max main

#tellraw @a [{"text":"[DSC] ","color":"aqua","bold":true},{"text":"Respawning at ","color":"gray"},{"score":{"name":"#new_x","objective":"calc.DSC"},"color":"yellow"},{"text":", ","color":"gray"},{"score":{"name":"#new_z","objective":"calc.DSC"},"color":"yellow"}]