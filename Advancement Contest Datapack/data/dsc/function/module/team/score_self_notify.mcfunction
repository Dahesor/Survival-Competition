scoreboard players operation $this team = @s team
function dsc:module/team/score_self
execute as @a if score @s team = $this team run function dsc:module/team/notify_score