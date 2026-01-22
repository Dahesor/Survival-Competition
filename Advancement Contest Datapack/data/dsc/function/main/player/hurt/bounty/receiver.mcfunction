scoreboard players operation @s player_bounty += #added player_bounty

scoreboard players operation $new_score calc.DSC = #gain player_bounty
function dsc:module/team/score_self_notify
function dsc:main/player/hurt/bounty/update