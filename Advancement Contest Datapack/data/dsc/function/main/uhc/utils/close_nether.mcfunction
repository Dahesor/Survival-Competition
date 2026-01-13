advancement revoke @s only dsc:enter_nether_portal

execute unless score nether_open main matches 0 run return fail
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace nether_portal

tellraw @s [{text:"",color:"red"},{translate:"head.game",color:"yellow"},"下界维度已关闭！"]
stopsound @s ambient block.portal.trigger
stopsound @s ambient block.portal.travel