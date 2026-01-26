data remove storage main: player[0].misc.offline
function dsc:main/plugin/offline/on/__off_to_on with storage main: player[0]

gamemode spectator @s
execute if data storage main: player[0].misc{offline_punish:1b} run return 1

tag @s add __no_inv_cache
function dsc:main/plugin/offline/on/clean_item

execute at 0-0-0-0-9 run summon item_display ~ ~ ~ {UUID:[I;0,0,0,2]}

scoreboard players set #slot calc.DSC 0
data modify storage run num set value {i:0}
data modify storage temp item set value {id:"stone"}
data modify storage temp Inv set from storage main: player[0].Inventory

execute if data storage temp Inv[0] run function dsc:main/plugin/offline/on/return_item/container

function dsc:main/plugin/offline/on/return_item/equipment
kill 0-0-0-0-2



tag @s remove __no_inv_cache
function dsc:main/player/offline/cache_inv

function dsc:main/plugin/offline/on/death/killed