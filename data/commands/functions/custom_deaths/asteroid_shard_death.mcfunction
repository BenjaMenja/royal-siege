execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

loot spawn ~ -5 ~ loot commands:rng/asteroid_shard_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.asteroid_shard_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{asteroid_shard_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was blasted to pieces.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was blown apart by an Asteroid Shard.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" forgot about the shards.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
