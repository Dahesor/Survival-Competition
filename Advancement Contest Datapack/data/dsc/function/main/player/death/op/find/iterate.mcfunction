execute store result score #state calc.DSC run data get storage team outpost.this[0].state
execute if score #state calc.DSC matches 3 run return run function dsc:main/player/death/op/find/next

execute store result score @s died.revive_target run data get storage team outpost.this[0].id
execute store result score @s died.expected_time run data get storage team outpost.this[0].next_spawn