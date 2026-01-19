scoreboard players operation #t1 calc.DSC = @s revive_time
scoreboard players operation #t1 calc.DSC /= #20 calc.DSC
execute if score @s revive_time matches 2.. run return run title @s actionbar ["",{text:"复活冷却："},{score:{name:"#t1",objective:"calc.DSC"},color:"red"},"s ",{translate:"operation.choose_respawn",with:[{keybind:"key.jump"}]},[{text:" "},{translate:"operation.change_spectate",with:[{keybind:"key.left"},{keybind:"key.right"}]}]]

execute if score @s died.revive_target matches -1 run return run title @s actionbar ["",{text:"未选择复活点",color:"red",bold:true},{translate:"operation.choose_respawn",with:[{keybind:"key.jump",color:"green"}]},[{text:" "},{translate:"operation.change_spectate",with:[{keybind:"key.left",color:"green"},{keybind:"key.right",color:"green"}]}]]

scoreboard players operation #time_left calc.DSC = @s died.expected_time
scoreboard players operation #time_left calc.DSC -= $gametime calc.DSC
scoreboard players remove #time_left calc.DSC 1
scoreboard players operation #time_left calc.DSC /= #20 calc.DSC
scoreboard players add #time_left calc.DSC 1
title @s actionbar [{text:"即将复活："},{score:{name:"#time_left",objective:"calc.DSC"},color:"yellow"},"s ",{translate:"operation.choose_respawn",with:[{keybind:"key.jump",color:"green"}]},[{text:" "},{translate:"operation.change_spectate",with:[{keybind:"key.left",color:"green"},{keybind:"key.right",color:"green"}]}]]