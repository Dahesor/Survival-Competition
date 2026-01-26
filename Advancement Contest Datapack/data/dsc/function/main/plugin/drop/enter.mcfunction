data modify storage run death set value {x:0d,y:0d,z:0d,in:""}
function dsc:main/plugin/drop/read_death_pos

data modify storage temp Inv set from entity @s Inventory
data modify storage temp equipment set value {}
data modify storage temp equipment set from entity @s equipment

function dsc:main/plugin/drop/__locate with storage run death