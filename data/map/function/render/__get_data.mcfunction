$data modify storage map:main temp append from storage map:main main.data[$(x)]
#$say [$(x)][].update
#execute store result score test map if data storage map:main temp[]
#tellraw @a {score:{name:test,objective:map}}