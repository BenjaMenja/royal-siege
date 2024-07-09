loot spawn ~ -5 ~ loot commands:rng/soup_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.soup_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{soup_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" ate too much soup.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" drank too much broth.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" turned into a soupy mess.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" is allergic to soup.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove