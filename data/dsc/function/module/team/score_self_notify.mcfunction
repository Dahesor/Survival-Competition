function dsc:module/team/score_self
scoreboard players operation $this team = @s team
execute as @a if score @s team = $this team run function dsc:module/team/notify_score