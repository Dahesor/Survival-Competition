execute positioned over ocean_floor as 0-0-0-0-0 run function map:sample/color/get_ocen_floor
execute if score $__height map matches ..3 run return run data modify storage map:main color set value "#4040FF"
execute if score $__height map matches 4..6 run return run data modify storage map:main color set value "#3737DC"
data modify storage map:main color set value "#2D2DB4"
