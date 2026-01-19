execute as @a[gamemode=!spectator] if score @s team = $this team if score @s UID < #base died.spectating run tag @s add __targets
execute if entity @a[tag=__targets,limit=1] run return run function dsc:main/player/death/spectate/swap/highest

execute as @a[gamemode=!spectator] if score @s team = $this team run tag @s add __targets
execute if entity @a[tag=__targets,limit=1] run return run function dsc:main/player/death/spectate/swap/highest