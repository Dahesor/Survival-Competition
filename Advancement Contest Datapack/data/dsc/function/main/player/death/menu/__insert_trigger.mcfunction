data modify storage temp dialog.body[-1].description.contents set value {translate:"op.select",with:[{text:"",color:"light_purple"},"","","",{text:"点击选择（安全）",underlined:true,color:"green"}]}

data modify storage temp dialog.body[-1].description.contents.with[0].text set string storage team outpost.this[0].count
data modify storage temp dialog.body[-1].description.contents.with[1] set string storage team outpost.this[0].x
data modify storage temp dialog.body[-1].description.contents.with[2] set string storage team outpost.this[0].y
data modify storage temp dialog.body[-1].description.contents.with[3] set string storage team outpost.this[0].z

execute store result score #state calc.DSC run data get storage team outpost.this[0].state
execute if score #state calc.DSC matches 1 run data modify storage temp dialog.body[-1].description.contents.with[4] merge value {text:"点击选择（敌人靠近）",color:"yellow"}
execute if score #state calc.DSC matches 2 run data modify storage temp dialog.body[-1].description.contents.with[4] merge value {text:"点击选择（被敌人发现）",color:"gold"}
execute if score #state calc.DSC matches 3 run data modify storage temp dialog.body[-1].description.contents.with[4] merge value {text:"无法使用（敌人过近）",color:"red",underlined:false}

$execute if score #state calc.DSC matches ..2 run data modify storage temp dialog.body[-1].description.contents.with[4].click_event set value {action:"run_command",command:"/trigger input set $(id)"}