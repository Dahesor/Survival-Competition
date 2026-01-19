data modify storage temp text.with[3] set value {text:"⛶"}
data modify storage temp text.with[2].text set value "- "
data modify storage temp text.with[2].color set value red

execute unless score @s died.revive_target matches -1 run function dsc:module/sidebar/this/_spawning_cd


data modify storage temp text.with[0].color set value red