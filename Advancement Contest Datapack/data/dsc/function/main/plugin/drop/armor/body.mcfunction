item replace entity @s armor.body with air
execute if score $offline calc.DSC matches 1 run data remove storage main: player[0].equipment.body
data modify storage temp item set from storage temp equipment.body
function dsc:main/plugin/drop/item