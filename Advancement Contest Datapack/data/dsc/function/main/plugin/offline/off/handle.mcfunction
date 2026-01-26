function dsc:player/uid/rotate with storage main: temp[0]
scoreboard players set #UID_GET UID -1
function dsc:main/plugin/offline/off/__remove_online with storage main: temp[0]
data modify storage main: offline append from storage main: temp[0]
function dsc:main/plugin/offline/off/__get_status with storage main: player[0]

data modify storage main: player[0].misc.offline set value true

execute if score $this revive_time matches 1.. run return run data modify storage main: player[0].misc.offline_punish set value 1b


data modify storage run death set from storage main: player[0].Pos
data modify storage run death.in set from storage main: player[0].Dimension
data modify storage temp Inv set from storage main: player[0].Inventory
data modify storage temp equipment set from storage main: player[0].equipment


#Get Punishment
scoreboard players set #has_op calc.DSC 0
execute if score $this hurt_penalty > $gametime calc.DSC run function dsc:main/plugin/offline/off/punish/killed
execute if score $this hurt_penalty < $gametime calc.DSC run function dsc:main/plugin/offline/off/__find_outpost with storage run death
execute if score $this hurt_penalty < $gametime calc.DSC run data modify storage main: player[0].misc.offline_punish set value 2b

scoreboard players set $offline calc.DSC 1
execute unless score #has_op calc.DSC matches 1 run function dsc:main/plugin/drop/__locate with storage run death
