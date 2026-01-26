scoreboard players operation $new_score calc.DSC *= #-1 calc.DSC
function dsc:module/team/score_self

scoreboard players operation $new_score calc.DSC *= #-1 calc.DSC
execute as @a if score @s team = $this team run function dsc:module/team/notify_removing_score