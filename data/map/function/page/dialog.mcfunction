tag @a remove dsc.__mapping_request
scoreboard players operation $map_frame calc.DSC = MAP_UPDATE_SPEED calc.DSC


data modify storage map:main dialog.dialog set value {type:"confirmation",title:"地图§c（若地图自己滚动请关闭刷新，或调低界面尺寸）",body:{type:"plain_message",width:420,contents:"ds"},pause:false,yes:{action:{type:"run_command",command:"/trigger dialog set -99"},label:"打开/关闭自动刷新"},no:{action:{type:"run_command",command:"/trigger dialog set -100"},label:{translate:"gui.done"}},after_action:"none"}

data modify storage map:main dialog.dialog.body.contents set from storage map:main text_ready
function dsc:menu/map with storage map:main dialog

tag @a[tag=map.static] remove dsc.mapping