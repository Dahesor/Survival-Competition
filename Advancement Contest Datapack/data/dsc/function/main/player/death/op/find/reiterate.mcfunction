scoreboard players operation @s died.expected_time += OUTPOST_WAVE_TIME main
tag @s remove spawn_locked

execute if score @s revive_time matches 1 run tellraw @s {text:"复活点被敌人禁用！您没能成功在指定的复活点复活",color:"red"}