function dsc:module/adv/remove_all

schedule function dsc:module/adv/init/story 1t
schedule function dsc:module/adv/init/story_final 2t
schedule function dsc:module/adv/init/adven 3t
schedule function dsc:module/adv/init/adven_final 4t
schedule function dsc:module/adv/init/nether 5t
schedule function dsc:module/adv/init/nether_final 6t
schedule function dsc:module/adv/init/hus 7t
schedule function dsc:module/adv/init/hus_final 8t
schedule function dsc:module/adv/init/end 9t
schedule function dsc:module/adv/init/end_final 10t

scoreboard players reset * trigger.balanced_diet
scoreboard players reset * trigger.biomes
scoreboard players reset * trigger.kill_all_mobs
scoreboard players reset * trigger.pairs
scoreboard players reset * trigger.tame_cats
scoreboard players reset * trigger.tame_dogs