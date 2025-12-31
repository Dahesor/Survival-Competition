data modify storage temp text.with[3] set value {text:"☠",color:"red"}
scoreboard players operation #revive calc.DSC = @s revive_time
scoreboard players operation #revive calc.DSC /= #20 calc.DSC
scoreboard players add #revive calc.DSC 1

#storage run num -> {i:0}
execute store result storage run num.i int 1 run scoreboard players get #revive calc.DSC
data modify storage temp text.with[2].text set string storage run num.i
data modify storage temp text.with[2].color set value red
data modify storage temp text.with[0].color set value red