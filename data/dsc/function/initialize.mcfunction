gamerule limited_crafting true
recipe take @a *
advancement revoke @a everything
scoreboard players set MAP_UPDATE_SPEED calc.DSC 60
forceload add 0 0
scoreboard players set #init calc.DSC 1

summon marker 0 0 0 {UUID:[I;0,0,0,0]}

#temp
scoreboard players set origin_x map 0
scoreboard players set origin_z map 0
scoreboard players set size map 64

function map:reset_main
function map:render/init

schedule function map:reset_main 3s

