data modify storage map:main line set from storage map:main temp[0]

scoreboard players set __char_count map 0

data modify storage map:main text[0] append from storage map:main text[0][0]
data remove storage map:main text[0][0]
data modify storage map:main text[1] append from storage map:main text[1][0]
data remove storage map:main text[1][0]
function map:render/line/char
data modify storage map:main text[0] append from storage map:main text[0][0]
data remove storage map:main text[0][0]
data modify storage map:main text[1] append from storage map:main text[1][0]
data remove storage map:main text[1][0]

data modify storage map:main text append from storage map:main text[0]
data modify storage map:main text append from storage map:main text[1]
data remove storage map:main text[0]
data remove storage map:main text[0]