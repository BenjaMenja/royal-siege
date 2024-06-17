loot spawn ~ -5 ~ loot commands:rng/lava_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.lava_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{lava_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":"'s flesh burned off.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" melted away.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" fell in a pit. What a loser.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s "},{"text":" was turned into a puddle.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
