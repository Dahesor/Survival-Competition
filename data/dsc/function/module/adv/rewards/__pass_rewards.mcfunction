#Emerald
execute if score $package_amount calc.DSC matches 1.. run loot give @s loot dsc:package/emerald_pack

#Score
execute if score $new_score calc.DSC matches 1.. run function dsc:module/team/score_self_notify

#Custom Function
$function $(function)

#Recipe
scoreboard players operation $this team = @s team
$execute as @a if score @s team = $this team run function $(recipe)