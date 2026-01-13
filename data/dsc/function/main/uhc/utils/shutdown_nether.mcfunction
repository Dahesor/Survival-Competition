scoreboard players set nether_open main 0
execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.7 1
tellraw @a [{text:"",color:"red"},{translate:"head.game",color:"yellow"},"下界维度已关闭！"]

execute in the_nether run kill @a[gamemode=survival,distance=0..]