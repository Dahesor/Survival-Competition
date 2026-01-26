advancement revoke @s only dsc:inventory_changed
execute unless score @s team matches 1.. run return fail

execute if entity @s[tag=__no_inv_cache] run return fail

function dsc:player/uid/get
execute if data storage main: player[0].misc{offline:true} run return fail

data modify storage main: player[0].Inventory set from entity @s Inventory
data modify storage main: player[0].equipment set from entity @s equipment