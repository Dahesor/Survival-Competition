execute if entity @s[tag=spawn_locked] run return fail

execute if score @s revive_time matches 1 run tellraw @s {text:"您选择的复活点已无法使用！",color:"red"}

scoreboard players set @s died.expected_time -1
scoreboard players set @s died.revive_target -1