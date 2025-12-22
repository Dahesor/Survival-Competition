execute unless data storage map:main line[0].update run return run function map:render/line/next_char
execute unless data storage map:main line[0].color[3] run return run function map:render/line/empty

data modify storage map:main text[0][0] set value {text:"█-",color:"white"}
data modify storage map:main text[0][1] set value {text:"█-",color:"white"}
data modify storage map:main text[1][0] set value {text:"█-",color:"white"}
data modify storage map:main text[1][1] set value {text:"█-",color:"white"}

data modify storage map:main text[0][0].color set from storage map:main line[0].color[0]
data modify storage map:main text[0][1].color set from storage map:main line[0].color[1]
data modify storage map:main text[1][0].color set from storage map:main line[0].color[2]
data modify storage map:main text[1][1].color set from storage map:main line[0].color[3]

function map:render/line/next_char