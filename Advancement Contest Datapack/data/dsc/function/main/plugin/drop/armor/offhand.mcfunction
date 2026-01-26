item replace entity @s weapon.offhand with air
execute if score $offline calc.DSC matches 1 run data remove storage main: player[0].equipment.offhand
data modify storage temp item set from storage temp equipment.offhand
function dsc:main/plugin/drop/item