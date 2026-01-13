execute store result score $package_amount calc.DSC run data get storage dsc:task this.first_reward.emerald
execute store result score $new_score calc.DSC run data get storage dsc:task this.first_reward.score

data modify storage dsc:task reward set value {function:"registry:null",recipe:"registry:null"}
execute if data storage dsc:task this.first_reward.function run data modify storage dsc:task reward.function set from storage dsc:task this.first_reward.function
execute if data storage dsc:task this.first_reward.recipe run data modify storage dsc:task reward.recipe set from storage dsc:task this.funcs.give_first

function dsc:module/adv/rewards/__pass_rewards with storage dsc:task reward