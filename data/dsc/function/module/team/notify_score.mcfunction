tellraw @s [{text:"[!] 您的队伍获得了",color:"green"},{score:{name:"$new_score",objective:"calc.DSC"},color:"yellow"}," 分!"]
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~