#302
scoreboard players set next gen 1
scoreboard players set phase gen 303
scoreboard players add $bastion gen 1

data modify storage gen l set value {}
data merge storage gen {l:{type:"structure",id:"bastion_remnant",in:"the_nether"}}

execute if score $bastion gen matches 1 run data modify storage gen l merge value {x:-400,z:-400}
execute if score $bastion gen matches 2 run data modify storage gen l merge value {x:-400,z:0}
execute if score $bastion gen matches 3 run data modify storage gen l merge value {x:-400,z:400}
execute if score $bastion gen matches 4 run data modify storage gen l merge value {x:0,z:-400}
execute if score $bastion gen matches 5 run data modify storage gen l merge value {x:0,z:0}
execute if score $bastion gen matches 6 run data modify storage gen l merge value {x:0,z:400}
execute if score $bastion gen matches 7 run data modify storage gen l merge value {x:400,z:-400}
execute if score $bastion gen matches 8 run data modify storage gen l merge value {x:400,z:0}
execute if score $bastion gen matches 9 run data modify storage gen l merge value {x:400,z:400}

function gen:locate/core/find