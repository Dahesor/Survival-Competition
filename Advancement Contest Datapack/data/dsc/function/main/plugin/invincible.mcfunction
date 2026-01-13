effect give @a instant_health 1 1 true
effect give @a resistance 2 10 true
execute if score time main >= INVINCIBLE_TIME main run scoreboard players set invincible main 0
execute if score time main >= INVINCIBLE_TIME main run function dsc:main/announce/invincible_end