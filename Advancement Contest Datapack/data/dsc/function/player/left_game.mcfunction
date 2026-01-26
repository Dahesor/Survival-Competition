scoreboard players reset @s leave_game
tag @s remove dsc.mapping
tag @s remove dsc.__mapping_request



#If Game is On and is a player:
execute unless score on main matches 1.. run return fail
execute unless score @s team matches 1.. run return fail

#If no mark, skip
function dsc:player/uid/get
execute if data storage main: player[0].misc{offline:true} run function dsc:main/plugin/offline/on/self