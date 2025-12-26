function map:render/player/reset
summon text_display ~ ~ ~ {text:{text:""},UUID:[I;0,0,0,1]}
execute as @a[gamemode=!spectator] at @s run function map:render/player/self
kill 0-0-0-0-1