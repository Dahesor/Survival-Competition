scoreboard players operation $this team = @s team
function dsc:core/relate/score__team
function dsc:main/player/death/menu/__read_data with storage team misc

scoreboard players set @s screen 1

data modify storage temp dialog.dialog set value {type:"multi_action",actions:[{label:{text:"刷新"},action:{type:"run_command",command:"/trigger input set -1"}}],pause:false,after_action:"none",title:"选择复活位置……",can_close_with_escape:false,body:[\
        {type:"item",item:{id:"barrier"},description:"没有可用的复活点。等待存活的队友……"},\
    ]\
}

data modify storage run num set value {i:0}
data modify storage temp dialog.body set value []

execute if data storage team outpost.this[0] run function dsc:main/player/death/menu/each

execute if data storage temp dialog.body[0] run data modify storage temp dialog.dialog.body set from storage temp dialog.body

function dsc:menu/any with storage temp dialog