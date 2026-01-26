scoreboard players operation @s revive_time = BASE_RESPAWN_TIME main
execute if data storage main: player[0].misc{offline_punish:2b} run scoreboard players set @s revive_time 400

scoreboard players reset @s death
gamemode spectator
tag @s add dead
tag @s add __dead_prepare
scoreboard players set @s died.revive_target -1
scoreboard players set @s died.expected_time -1
function dsc:main/player/death/op/find/available


function dsc:core/relate/team_state/read
execute if score #this_state team matches 1 run return run function dsc:main/player/death/ace/confirm
execute if score #this_state team matches 2 run return run function dsc:main/player/death/eliminate/self