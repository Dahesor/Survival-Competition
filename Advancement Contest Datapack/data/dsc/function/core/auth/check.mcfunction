execute store result score $current op.auth run stopwatch query dsc:master
execute if score @s op.auth > $current op.auth run return 1
return fail