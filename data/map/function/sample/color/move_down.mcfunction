execute if block ~ ~ ~ #map:binary/include run return run function map:sample/color/here
scoreboard players add $it calc.DSC 1
execute unless score $it calc.DSC matches 3.. positioned ~ ~-1 ~ run return run function map:sample/color/move_down
function map:sample/color/case/none