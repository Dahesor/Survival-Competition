data modify storage temp text set value {translate:"e.pl",with:[{text:"",color:"dark_gray"},{object:"player",player:"*"},{text:"",shadow_color:-16579829},{text:""}]}

tag @s add map.__name
data modify entity 0-0-0-0-1 text set value {selector:"@a[limit=1,tag=map.__name]"}
tag @s remove map.__name

data modify storage temp text.with[0].text set from entity 0-0-0-0-1 text.extra[1]
data modify storage temp text.with[1].player set from storage temp text.with[0].text

execute if entity @s[gamemode=spectator] run function dsc:module/sidebar/this/dead
execute if entity @s[gamemode=!spectator] run function dsc:module/sidebar/this/alive

data modify storage sidebar.dah:data ui.lore append from storage temp text