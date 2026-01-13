data modify storage dsc:task new append value {\
    advancement:"dsc_adv:nether/loot_bastion",\
    all_reward:{emerald:2,score:4,recipe:"dsc_recipe:nether/bastion/loot_bastion"},\
    first_reward:{emerald:4,score:5,recipe:"dsc_recipe:nether/bastion/loot_bastion_first"},\
    display:{lore_length:1},\
    additional_lore:{\
        all_:"",\
        first_:"",\
        recipe_sum_all:"附魔台\n红石比较器，红石中继器",\
        recipe_sum_first:"观察者",\
    }\
}


data modify storage dsc:task new[-1] merge value {\
    id:"loot_bastion",\
    display:{\
        title:{"translate":"task.loot_bastion","italic":false},\
        lore:[{"translate":"task.loot_bastion.1","italic":false,"color":"gray"}, "\n", {"translate":"task.reward","italic":false,"color":"light_purple"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["4"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["2"]}, "\n", {"translate":"reward.recipe","italic":false,"color":"aqua"}, "\n", {"text":"附魔台\n红石比较器，红石中继器","italic":false,"color":"gray"}, "\n", {"translate":"task.reward_first","italic":false,"color":"light_purple"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["5"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["4"]}, "\n", {"translate":"reward.recipe","italic":false,"color":"aqua"}, "\n", {"text":"观察者","italic":false,"color":"gray"}],\
        \
        recipe_name_all:[],\
        \
        recipe_name_first:[],\
    },\
    funcs:{\
        give:"dsc_recipe:loot_bastion/give",\
        take:"dsc_recipe:loot_bastion/take",\
        give_first:"dsc_recipe:loot_bastion_first/give",\
        take_first:"dsc_recipe:loot_bastion_first/take",\
    }\
}