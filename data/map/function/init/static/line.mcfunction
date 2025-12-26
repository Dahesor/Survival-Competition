data modify storage map:main nether.raw append value [{text:"",font:"dsc:map"},{translate:"dsc.map.static",color:"#606060"},"="]
data modify storage map:main nether.raw append value [{text:"",font:"dsc:map_2"},{translate:"dsc.map.static",color:"#606060"},"="]
data modify storage map:main nether.raw append value [{text:"",font:"dsc:map_3"},{translate:"dsc.map.static",color:"#606060"},"\n"]
data modify storage map:main nether.raw append value [{text:"",font:"dsc:map"},{translate:"dsc.map.static",color:"#606060"},"="]
data modify storage map:main nether.raw append value [{text:"",font:"dsc:map_2"},{translate:"dsc.map.static",color:"#606060"},"="]
data modify storage map:main nether.raw append value [{text:"",font:"dsc:map_3"},{translate:"dsc.map.static",color:"#606060"},"\n"]

execute store result storage run bu.col int 1 run scoreboard players get __col map
scoreboard players add __col map 1

function map:init/static/__button with storage run bu