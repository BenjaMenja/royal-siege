loot spawn ~ -5 ~ loot commands:rng/ai_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.ai_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ai_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was digitized.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" entered the digital realm.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" watched as AI took over the world.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" die haha","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
