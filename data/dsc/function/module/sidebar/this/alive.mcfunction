data modify storage temp text.with[3] set value {text:"❤"}

#storage run num -> {i:0}
execute store result storage run num.i int 1 run scoreboard players get @s health
data modify storage temp text.with[2].text set string storage run num.i