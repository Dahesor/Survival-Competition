title @a times 0 15 10
title @a title ""
title @a subtitle {"text":"游戏开始！","color":"red","bold":true}
clear @a
effect clear @a
effect give @a instant_health 1 5
execute as @a at @s run playsound block.end_portal.spawn master @s

function dsc:main/init/start_