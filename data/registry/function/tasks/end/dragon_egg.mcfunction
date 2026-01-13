data modify storage dsc:task new append value {\
    advancement:"dsc_adv:end/dragon_egg",\
    all_reward:{emerald:0,score:1},\
    first_reward:{emerald:20,score:24,recipe:"dsc_recipe:end/get_egg_first"},\
    display:{lore_length:1},\
    additional_lore:{\
        all_:"",\
        first_:"",\
        recipe_sum_all:"",\
        recipe_sum_first:"全套钻石装备\n书架，铁砧\n不死图腾",\
    }\
}


data modify storage dsc:task new[-1] merge value {\
    id:"dragon_egg",\
    display:{\
        title:{"translate":"task.dragon_egg","italic":false},\
        lore:[{"translate":"task.dragon_egg.1","italic":false,"color":"gray"}, "\n", {"translate":"task.reward","italic":false,"color":"light_purple"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["1"]}, "\n", {"translate":"task.reward_first","italic":false,"color":"light_purple"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["24"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["20"]}, "\n", {"translate":"reward.recipe","italic":false,"color":"aqua"}, "\n", {"text":"全套钻石装备\n书架，铁砧\n不死图腾","italic":false,"color":"gray"}],\
        \
        recipe_name_all:[],\
        \
        recipe_name_first:[],\
    },\
    funcs:{\
        give:"registry:null",\
        take:"registry:null",\
        give_first:"dsc_recipe:get_egg_first/give",\
        take_first:"dsc_recipe:get_egg_first/take",\
    }\
}