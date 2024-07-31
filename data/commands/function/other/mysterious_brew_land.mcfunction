loot spawn ~ -5 ~ loot commands:rng/mysterious_brew_duration
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.mysteriousbrewduration store result storage commands:rng value int 1 run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{mysteriousbrewduration:1b}}}}]

function commands:other/mysterious_brew_effects with storage commands:rng