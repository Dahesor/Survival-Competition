advancement revoke @s only dsc:enter_end_portal

execute unless score end_open main matches 0 run return fail
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace end_portal

tellraw @s [{text:"",color:"red"},{translate:"head.game",color:"yellow"},"末地已关闭!"]
stopsound @s ambient block.portal.trigger
stopsound @s ambient block.portal.travel