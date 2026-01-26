item replace entity @s armor.head with air
execute if score $offline calc.DSC matches 1 run data remove storage main: player[0].equipment.head
data modify storage temp item set from storage temp equipment.head
function dsc:main/plugin/drop/item