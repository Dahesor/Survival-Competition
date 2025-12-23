data modify storage dsc:task new append value {\
    advancement:"dsc_adv:story/upgrade_tools",\
    all_reward:{emerald:5,score:5,recipe:"dsc_recipe:stone_pickaxe"},\
    first_reward:{emerald:10,score:10},\
    display:{lore_length:1},\
    additional_lore:{\
        all_:"",\
        first_:"",\
        recipe_sum_all:"",\
        recipe_sum_first:"",\
    }\
}


data modify storage dsc:task new[-1] merge value {\
    id:"stone_pickaxe",\
    display:{\
        title:{"translate":"task.stone_pickaxe","italic":false},\
        lore:[{"translate":"task.stone_pickaxe.1","italic":false,"color":"gray"}, "\n", {"translate":"task.reward","italic":false,"color":"light_purple"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["5"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["5"]}, "\n", {"translate":"task.reward_first","italic":false,"color":"light_purple"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["10"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["10"]}],\
        \
        recipe_name_all:[],\
        \
        recipe_name_first:[],\
    },\
    funcs:{\
        give:"dsc_recipe:stone_pickaxe/give",\
        take:"dsc_recipe:stone_pickaxe/take",\
        give_first:"registry:null",\
        take_first:"registry:null",\
    }\
}