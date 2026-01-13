data modify storage run num set value {i:-1}
function dsc:main/plugin/drop/loop

data modify storage temp equipment set value {}
data modify storage temp equipment set from entity @s equipment

#Head Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.head run function dsc:main/plugin/drop/armor/head

#Body Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.body run function dsc:main/plugin/drop/armor/body

#Legs Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.legs run function dsc:main/plugin/drop/armor/legs

#Feet Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.feet run function dsc:main/plugin/drop/armor/feet

#Offhand
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.offhand run function dsc:main/plugin/drop/armor/offhand
