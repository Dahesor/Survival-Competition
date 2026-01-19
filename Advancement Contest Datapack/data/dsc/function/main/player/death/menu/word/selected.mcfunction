execute if score #state calc.DSC matches 1 run return run data modify storage temp dialog.body[-1].description.contents.with[3] merge value {text:"当前选择（敌人靠近）",color:"yellow",underlined:false,bold:true}
execute if score #state calc.DSC matches 2 run return run data modify storage temp dialog.body[-1].description.contents.with[3] merge value {text:"当前选择（被敌人发现）",color:"gold",underlined:false,bold:true}
execute if score #state calc.DSC matches 3 run return run data modify storage temp dialog.body[-1].description.contents.with[3] merge value {text:"当前选择（敌人过近）",color:"red",underlined:false,bold:true}
data modify storage temp dialog.body[-1].description.contents.with[3] merge value {text:"当前选择（安全）",underlined:false,color:"green",bold:true}
