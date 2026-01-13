$data remove storage map:main main.data[$(x)][].update
#$say [$(x)][].update
#execute store result score test map if data storage map:main temp[]
#tellraw @a {score:{name:test,objective:map}}