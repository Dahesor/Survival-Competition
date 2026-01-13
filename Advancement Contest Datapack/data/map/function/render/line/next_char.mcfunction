data modify storage map:main text[0] append from storage map:main text[0][0]
data modify storage map:main text[0] append from storage map:main text[0][1]
data remove storage map:main text[0][0]
data remove storage map:main text[0][0]
data modify storage map:main text[1] append from storage map:main text[1][0]
data modify storage map:main text[1] append from storage map:main text[1][1]
data remove storage map:main text[1][0]
data remove storage map:main text[1][0]

scoreboard players add __char_count map 1
data remove storage map:main line[0]
execute if score __char_count map matches ..63 run function map:render/line/char