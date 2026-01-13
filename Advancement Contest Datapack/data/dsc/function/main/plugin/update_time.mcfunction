scoreboard players operation second main = time main
scoreboard players operation second main /= #20 calc.DSC
scoreboard players operation minute main = second main
scoreboard players operation minute main /= #60 calc.DSC
scoreboard players operation second main %= #60 calc.DSC

#storage temp time_text -> [{text:"",shadow_color:-16579829},{text:":"},{text:""}]

execute store result storage temp time_holder int 1 run scoreboard players get minute main
data modify storage temp time_text[0].text set string storage temp time_holder

data modify storage temp time_text[2].text set value ""
execute if score second main matches ..9 store result storage temp time_holder int 0.1 run scoreboard players get second main
execute if score second main matches ..9 run data modify storage temp time_text[2].text set string storage temp time_holder

execute store result storage temp time_holder int 1 run scoreboard players get second main
data modify storage temp time_text[3].text set string storage temp time_holder