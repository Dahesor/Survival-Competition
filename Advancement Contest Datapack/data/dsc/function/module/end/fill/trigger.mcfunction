advancement revoke @s only dsc:fill_end_portal
execute unless score @s used.ender_eye matches 1.. run return fail
scoreboard players reset @s used.ender_eye

execute if score end_open main matches 0 run return run function dsc:main/uhc/utils/close_end

execute anchored eyes unless function dsc:module/end/fill/locate/raycast positioned ~-5 ~-5 ~-5 run function dsc:module/end/fill/locate/iterate
advancement grant @s only dsc_adv:story/follow_ender_eye