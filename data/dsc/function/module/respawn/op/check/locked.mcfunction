scoreboard players set @s outpost.state 3
execute as @a[gamemode=!spectator,distance=..50] unless score @s team = $this team run effect give @s glowing 2 0 true