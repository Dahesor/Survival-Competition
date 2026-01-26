tp @s ~ ~ ~ ~ ~
data modify storage run Pos set from entity @s Pos
data modify storage main: player[0].Pos.x set from storage run Pos[0]
data modify storage main: player[0].Pos.y set from storage run Pos[1]
data modify storage main: player[0].Pos.z set from storage run Pos[2]

execute if predicate {condition:"location_check",predicate:{dimension:"overworld"}} run return run data modify storage main: player[0].Dimension set value "overworld"
execute if predicate {condition:"location_check",predicate:{dimension:"the_nether"}} run return run data modify storage main: player[0].Dimension set value "the_nether"
execute if predicate {condition:"location_check",predicate:{dimension:"the_end"}} run return run data modify storage main: player[0].Dimension set value "the_end"