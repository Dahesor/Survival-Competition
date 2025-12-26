schedule clear gen:main
execute store result score total_time gen run stopwatch query gen:main
stopwatch remove gen:main
tellraw @a [{text:"[gen:main] 进程终止: ERR: Invalid Goto ",color:"red"},{score:{name:"total_time",objective:"gen"},color:"yellow"},{text:"s",color:"red"}]
gamerule command_block_output false
gamerule block_drops true
gamerule entity_drops true
gamemode creative @a
execute unless score spec_gen_chunk gen matches 1 run gamerule spectators_generate_chunks false