data modify storage map:main t set value {text:"",italic:0b,extra:["",{text:"-n|",color:"white",font:"dsc:pl/1",hover_event:{action:"show_text",value:{text:"",font:"default",extra:[{text:""}]}}},{text:"",font:"dsc:pn"}]}
data modify storage map:main t.text set string storage map:main num.shift
data modify storage map:main t.extra[2].text set from storage map:main t.text

tag @s add map.__name
function map:render/player/get_name
tag @s remove map.__name

scoreboard players operation __font map = z map
scoreboard players operation __font map %= #18 calc.DSC

function map:render/player/rotation

execute if score __font map matches 3..5 run return run data modify storage map:main t.extra[1].font set value "dsc:pl/2"
execute if score __font map matches 6..8 run return run data modify storage map:main t.extra[1].font set value "dsc:pl/3"
execute if score __font map matches 9..11 run return run data modify storage map:main t.extra[1].font set value "dsc:pl/4"
execute if score __font map matches 12..14 run return run data modify storage map:main t.extra[1].font set value "dsc:pl/5"
execute if score __font map matches 15..17 run return run data modify storage map:main t.extra[1].font set value "dsc:pl/6"