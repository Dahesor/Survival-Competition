
execute if score rx map matches -45..45 run return run data modify storage map:main t.extra[1].text set value "-s|"
execute if score rx map matches 45..135 run return run data modify storage map:main t.extra[1].text set value "-w|"
execute if score rx map matches -135..-45 run return run data modify storage map:main t.extra[1].text set value "-e|"