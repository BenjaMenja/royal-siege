loot spawn ~ -5 ~ loot commands:rng/dragon_rush_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.dragon_rush_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dragon_rush_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was rushed down.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" should've been rushed to the hospital, but they died instead.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" couldn't comprehend the rush.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove