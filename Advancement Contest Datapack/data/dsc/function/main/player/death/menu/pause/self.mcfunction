execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.9 1.3
scoreboard players set @s died.revive_target -1
scoreboard players set @s died.expected_time -1
function dsc:main/player/death/menu/arrange