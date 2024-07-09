loot spawn ~ -5 ~ loot commands:rng/lightning_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.lightning_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{lightning_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was struck down by lightning.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" rode the lightning, and failed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" tempted the weather gods.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was vaporized by lightning.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" is surging with too much power.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove