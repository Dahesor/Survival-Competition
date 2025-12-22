data modify storage dsc:task new append value {\
    advancement:"story/mine_stone",\
    all_reward:{emerald:5,score:5,recipe:"dsc_recipe:crafting_table"},\
    first_reward:{emerald:10,score:10,recipe:"dsc_recipe:caves_cliff"},\
    display:{lore_length:2},\
    additional_lore:{\
        all_:"ddd",\
        first_:"",\
        recipe_sum_all:"as",\
        recipe_sum_first:"as",\
    }\
}


data modify storage dsc:task new[-1] merge value {\
    id:"crafting_table",\
    display:{\
        title:{"translate":"task.crafting_table","italic":false},\
        lore:[{"translate":"task.crafting_table.1","italic":false,"color":"gray"}, "\n", {"translate":"task.crafting_table.2","italic":false,"color":"gray"}, "\n", {"translate":"task.reward","italic":false,"color":"green"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["5"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["5"]}, "\n", {"text":"ddd","italic":false,"color":"gray"}, "\n", {"translate":"reward.recipe","italic":false,"color":"aqua"}, "\n", {"text":"as","italic":false,"color":"gray"}, "\n", {"translate":"task.reward_first","italic":false,"color":"green"}, "\n", {"translate":"reward.score","italic":false,"color":"gold","with":["10"]}, "\n", {"translate":"reward.emerald","italic":false,"color":"green","with":["10"]}, "\n", {"translate":"reward.recipe","italic":false,"color":"aqua"}, "\n", {"text":"as","italic":false,"color":"gray"}],\
        \
        recipe_name_all:[{"text":"","color":"gray","italic":false},{"translate":"recipe.wooden_axe","extra":["\n"]},{"translate":"recipe.wooden_hoe","extra":["\n"]},{"translate":"recipe.wooden_pickaxe","extra":["\n"]},{"translate":"recipe.wooden_sword","extra":["\n"]},{"translate":"recipe.wooden_shovel","extra":["\n"]},{"translate":"recipe.leather_boots","extra":["\n"]},{"translate":"recipe.leather_chestplate","extra":["\n"]},{"translate":"recipe.leather_helmet","extra":["\n"]},{"translate":"recipe.leather_leggings","extra":["\n"]},{"translate":"recipe.furnace","extra":["\n"]},{"translate":"recipe.barrel","extra":["\n"]},{"translate":"recipe.ladder","extra":["\n"]}],\
        \
        recipe_name_first:[{"text":"","color":"gray","italic":false},{"translate":"recipe.enchanting_table","extra":["\n"]},{"translate":"recipe.bookshelf","extra":["\n"]},{"translate":"recipe.chiseled_bookshelf","extra":["\n"]}],\
    },\
    leader_advancement:"adventure/adventuring_time",\
    funcs:{\
        give:"dsc_recipe:crafting_table/give",\
        take:"dsc_recipe:crafting_table/take",\
        give_first:"dsc_recipe:caves_cliff/give",\
        take_first:"dsc_recipe:caves_cliff/take",\
    }\
}