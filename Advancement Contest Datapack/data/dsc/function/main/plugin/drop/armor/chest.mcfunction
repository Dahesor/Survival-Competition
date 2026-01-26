item replace entity @s armor.chest with air
execute if score $offline calc.DSC matches 1 run data remove storage main: player[0].equipment.chest
data modify storage temp item set from storage temp equipment.chest
function dsc:main/plugin/drop/item