advancement revoke @s only dsc:effects_changed
execute unless predicate dsc:effects/all_potion run return fail
execute if entity @s[advancements={dsc_adv:nether/all_effects=true}] run return fail
execute if data entity @s active_effects[29] run advancement grant @s only dsc_adv:nether/all_effects