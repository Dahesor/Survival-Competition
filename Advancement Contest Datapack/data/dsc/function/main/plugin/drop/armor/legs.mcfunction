item replace entity @s armor.legs with air
execute if score $offline calc.DSC matches 1 run data remove storage main: player[0].equipment.legs
data modify storage temp item set from storage temp equipment.legs
function dsc:main/plugin/drop/item