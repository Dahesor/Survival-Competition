data modify storage run num set value {i:-1}

#Inventory Items
function dsc:main/plugin/drop/loop

#Head Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.head run function dsc:main/plugin/drop/armor/head

#Body Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.body run function dsc:main/plugin/drop/armor/body

#Chest Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.chest run function dsc:main/plugin/drop/armor/chest

#Legs Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.legs run function dsc:main/plugin/drop/armor/legs

#Feet Armor
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.feet run function dsc:main/plugin/drop/armor/feet

#Offhand
execute store result score $rand main run random value 1..100
execute if score $rand main <= drop_rate main if data storage temp equipment.offhand run function dsc:main/plugin/drop/armor/offhand
