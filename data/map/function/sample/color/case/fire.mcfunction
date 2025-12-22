execute if score $__height map matches 2.. run return run data modify storage map:main color set value "#B40000"
execute if score $__height map matches -1..1 run return run data modify storage map:main color set value "#DC0000"
data modify storage map:main color set value "#FF0000"
