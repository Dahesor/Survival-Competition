scoreboard players operation $this dialog = @s dialog
scoreboard players set @s dialog 0

execute if score $this dialog matches -99 run function dsc:menu/map/auto
execute if score $this dialog matches -100 run function dsc:menu/map/close
execute if score $this dialog matches -1 run function dsc:menu/admin/guard

execute if score $this dialog matches 2 run function dsc:menu/map/request