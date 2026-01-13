execute unless data storage temp Inv[0] run return fail

#Keep on Death
execute if data storage temp Inv[0].components."minecraft:custom_data"{keeps_on_death:true} run return run function dsc:main/plugin/drop/next

#Drop Chance
execute store result score $rand main run random value 1..100
execute if score $rand main > drop_rate main run return run function dsc:main/plugin/drop/next

#Drop Item
execute store result storage run num.i int 1 run data get storage temp Inv[0].Slot
data remove storage temp Inv[0].Slot
data modify storage temp item set from storage temp Inv[0]
function dsc:main/plugin/drop/item
function dsc:main/plugin/drop/__clear_backpack with storage run num

#Next
function dsc:main/plugin/drop/next