scoreboard players set @s outpost.state 3
execute as @a[gamemode=!spectator,distance=..50] unless score @s team = $this team run effect give @s glowing 2 0 true
scoreboard players operation $this outpost = @s outpost
execute as @a[gamemode=spectator,scores={team=1..},tag=!aced,tag=!eliminated] if score @s died.revive_target = $this outpost run function dsc:main/player/death/op/find/ban