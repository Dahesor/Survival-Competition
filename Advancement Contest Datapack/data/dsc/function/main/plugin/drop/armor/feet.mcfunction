item replace entity @s armor.feet with air
execute if score $offline calc.DSC matches 1 run data remove storage main: player[0].equipment.feet
data modify storage temp item set from storage temp equipment.feet
function dsc:main/plugin/drop/item