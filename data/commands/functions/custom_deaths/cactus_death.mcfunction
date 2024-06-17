loot spawn ~ -5 ~ loot commands:rng/cactus_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.cactus_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{cactus_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" walked into a cactus.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" isn't watching where they're going.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was pricked by a cactus.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove