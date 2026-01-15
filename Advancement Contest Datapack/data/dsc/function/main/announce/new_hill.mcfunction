tellraw @a [{text:"",color:"yellow"},{translate:"head.game",color:"green"},"出现了新的占领点！其附近人数最多的队伍将会持续获得分数！"]
tellraw @a [{text:" - ",color:"light_purple"},"寻找天空中的信标光柱！你的定位栏也会显示它的方位"]
tellraw @a [{text:" - ",color:"light_purple"},"占领点被占领后，即使该队伍离开也会保持占领状态，直到被其他队伍占领！"]
execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 0.7 1