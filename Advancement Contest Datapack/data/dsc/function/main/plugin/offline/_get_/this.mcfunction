execute store result score #valid calc.DSC run function dsc:main/plugin/offline/_get_/response with storage main: temp[0]
execute if score #valid calc.DSC matches 0 run return run function dsc:main/plugin/offline/off/handle

data remove storage main: temp[0]
execute if data storage main: temp[0] run function dsc:main/plugin/offline/_get_/this