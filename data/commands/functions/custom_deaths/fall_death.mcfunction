loot spawn ~ -5 ~ loot commands:rng/fall_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.fall_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fall_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" didn't bounce.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" broke their legs.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" jumped too high.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s "},{"text":" couldn't wait to touch the ground again.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove