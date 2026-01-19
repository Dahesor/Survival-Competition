#按键Pos Edge与去抖

execute if predicate dsc:keys/a run scoreboard players add @s key.a 6
execute if predicate dsc:keys/d run scoreboard players add @s key.d 6
execute if predicate dsc:keys/space run scoreboard players add @s key.space 6

scoreboard players operation @s key.a /= #2 calc.DSC
scoreboard players operation @s key.d /= #2 calc.DSC
scoreboard players operation @s key.space /= #2 calc.DSC