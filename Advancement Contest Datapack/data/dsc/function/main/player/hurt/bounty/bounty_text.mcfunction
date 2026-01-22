data modify storage temp text set value {translate:"bounty.claim",with:[{selector:"@a[limit=1,tag=__bounty_owner]"},{selector:"@s"},[{score:{name:"#gain",objective:"player_bounty"},color:"gray"},{object:"atlas",sprite:"item/gold_ingot",atlas:"items",color:"white",underlined:false,bold:false}]]}
execute if score #gain player_bounty matches 10..19 run data modify storage temp text.with[2][0].color set value "green"
execute if score #gain player_bounty matches 20..29 run data modify storage temp text.with[2][0] merge value {color:"gold",bold:true}
execute if score #gain player_bounty matches 30..49 run data modify storage temp text.with[2][0] merge value {color:"red",bold:true}
execute if score #gain player_bounty matches 50.. run data modify storage temp text.with[2][0] merge value {color:"red",bold:true,underlined:true}

tellraw @a {storage:"temp",nbt:"text",interpret:true}