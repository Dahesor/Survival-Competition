scoreboard players set __tshift map 0
data modify storage map:main num set value {shift:0,z:0}
execute if score x map matches 256.. run scoreboard players add __tshift map 900000000
execute if score x map matches 256.. run scoreboard players remove x map 256

execute if score x map matches 128.. run scoreboard players add __tshift map 80000000
execute if score x map matches 128.. run scoreboard players remove x map 128

execute if score x map matches 64.. run scoreboard players add __tshift map 7000000
execute if score x map matches 64.. run scoreboard players remove x map 64

execute if score x map matches 32.. run scoreboard players add __tshift map 600000
execute if score x map matches 32.. run scoreboard players remove x map 32

execute if score x map matches 16.. run scoreboard players add __tshift map 50000
execute if score x map matches 16.. run scoreboard players remove x map 16

execute if score x map matches 8.. run scoreboard players add __tshift map 4000
execute if score x map matches 8.. run scoreboard players remove x map 8

execute if score x map matches 4.. run scoreboard players add __tshift map 300
execute if score x map matches 4.. run scoreboard players remove x map 4

execute if score x map matches 2.. run scoreboard players add __tshift map 20
execute if score x map matches 2.. run scoreboard players remove x map 2

execute if score x map matches 1.. run scoreboard players add __tshift map 1
execute store result storage map:main num.shift int 1 run scoreboard players get __tshift map