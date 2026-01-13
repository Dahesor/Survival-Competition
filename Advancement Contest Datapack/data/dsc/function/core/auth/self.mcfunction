execute unless entity @s[type=player] run return fail
execute store result score @s op.auth run stopwatch query dsc:master
scoreboard players add @s op.auth 1800