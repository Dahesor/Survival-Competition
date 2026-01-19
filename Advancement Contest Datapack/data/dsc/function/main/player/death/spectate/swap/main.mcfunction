scoreboard players operation $this team = @s team
scoreboard players operation #base died.spectating = @s died.spectating
function dsc:main/player/death/spectate/swap/get_target
scoreboard players set @s died.swap_cd 5
playsound ui.button.click ui @s ~ ~ ~ 0.8 1.4

scoreboard players operation @s died.spectating = #result UID
execute as @a if score @s UID = #result UID run tag @s add __targets
tellraw @s {"text":"正在旁观",color:"dark_gray","extra":[{"selector":"@a[tag=__targets]",color:"gray"}]}
tag @a remove __targets