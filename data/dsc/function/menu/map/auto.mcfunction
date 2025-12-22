execute unless entity @s[tag=map.static] run return run function dsc:menu/map/static

tag @s remove map.static
tag @s add dsc.mapping

tellraw @s {text:"[SYS] [!] 您的地图会自动刷新了",color:"green"}
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~