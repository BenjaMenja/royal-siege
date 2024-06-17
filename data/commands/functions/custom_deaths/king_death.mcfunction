loot spawn ~ -5 ~ loot commands:rng/king_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.king_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{king_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was knighted incorrectly.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" received the royal treatment.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" got a little too close to taking the throne.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s "},{"text":" was hugged by the King.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove