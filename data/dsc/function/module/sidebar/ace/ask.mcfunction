data modify storage team outpost.run set from storage team outpost.this
data remove storage team outpost.run[{state:3}]
execute if data storage team outpost.run[0] run return fail
execute as @a[tag=!dead] if score @s team = $this team run return fail

#Aced
execute as @a if score @s team = $this team run function dsc:main/player/death/ace/confirm