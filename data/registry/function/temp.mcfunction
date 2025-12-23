data modify storage dsc:task new append value {\
    advancement:"dsc_adv:story/mine_stone",\
    all_reward:{emerald:5,score:5,recipe:"dsc_recipe:wooden_pickaxe"},\
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
    id:"",\
    display:{\
        title:{},\
        lore:[],\
        \
        recipe_name_all:[],\
        \
        recipe_name_first:[],\
    },\
    funcs:{\
        give:"registry:null",\
        take:"registry:null",\
        give_first:"registry:null",\
        take_first:"registry:null",\
    }\
}