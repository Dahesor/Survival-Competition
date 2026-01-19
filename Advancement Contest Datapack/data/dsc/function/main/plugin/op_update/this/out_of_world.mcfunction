execute if function dsc:main/plugin/op_update/this/check_in_range run return fail

function dsc:main/plugin/op_update/this/del/__change_score with storage team outpost.this[0]

execute store result score $this outpost run data get storage team outpost.this[0].id
execute as @a[gamemode=spectator,scores={team=1..},tag=!aced,tag=!eliminated] if score @s died.revive_target = $this outpost run function dsc:main/player/death/op/find/ban

data modify storage team misc.op_del.id set from storage team outpost.this[0].id
data modify storage team misc.op_del.team set from storage team misc.color
function dsc:module/respawn/op/destroy/__remove_entry with storage team misc.op_del
function dsc:module/respawn/op/destroy/__remove_marker with storage team misc.op_del


return 1