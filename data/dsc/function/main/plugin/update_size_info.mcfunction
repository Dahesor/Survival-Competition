execute in overworld store result score main_border_size main run worldborder get
scoreboard players operation main_radius main = main_border_size main
scoreboard players operation main_radius main /= #2 calc.DSC
scoreboard players operation current_x_min main = #center_x main
scoreboard players operation current_x_max main = #center_x main
scoreboard players operation current_z_min main = #center_z main
scoreboard players operation current_z_max main = #center_z main
scoreboard players operation current_x_min main -= main_radius main
scoreboard players operation current_x_max main += main_radius main
scoreboard players operation current_z_min main -= main_radius main
scoreboard players operation current_z_max main += main_radius main