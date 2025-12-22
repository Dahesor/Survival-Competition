scoreboard players operation $x calc.DSC = @s input
scoreboard players operation $z calc.DSC = @s input
scoreboard players set @s input 0

scoreboard players operation $x calc.DSC %= #100 calc.DSC
scoreboard players operation $z calc.DSC /= #100 calc.DSC

scoreboard players operation $x calc.DSC *= #48 calc.DSC
scoreboard players operation $z calc.DSC *= #48 calc.DSC
scoreboard players remove $x calc.DSC 24
scoreboard players remove $z calc.DSC 24

scoreboard players operation $x calc.DSC += origin_x map
scoreboard players operation $z calc.DSC += origin_z map


data modify storage run tp set value {x:0,z:0}
execute store result storage run tp.x int 1 run scoreboard players get $x calc.DSC
execute store result storage run tp.z int 1 run scoreboard players get $z calc.DSC
function dsc:menu/trigger/__tp with storage run tp