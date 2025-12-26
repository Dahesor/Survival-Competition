tag @s add map.static
tag @s remove dsc.mapping

tellraw @s {text:"[SYS] [!] 您的地图将不再自动刷新。您需要手动关闭再打开地图以刷新上面的内容",color:"gold"}
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~