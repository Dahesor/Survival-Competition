tellraw @a [{text:"",color:"yellow"},{translate:"head.game",color:"green"},"无敌时间已结束！注意安全！"]
execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.7 1
schedule function dsc:main/announce/invincible_end_2 3t