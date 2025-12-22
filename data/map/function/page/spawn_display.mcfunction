summon text_display ~ ~ ~ {Tags:["map.display"],text:"",brightness:{block:15,sky:15},background:0,line_width:450,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

data modify storage run text set value []
data modify storage run text append from storage map:main text_ready

data modify entity @n[type=text_display,tag=map.display,distance=..1] text set from storage run text