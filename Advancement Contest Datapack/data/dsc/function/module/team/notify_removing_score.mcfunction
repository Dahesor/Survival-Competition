tellraw @s [{text:"[!] 您的队伍失去了",color:"red"},{score:{name:"$new_score",objective:"calc.DSC"},color:"yellow"}," 分!"]
execute at @s run playsound block.anvil.place master @s ~ ~ ~ 0.5 1.3