execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

loot spawn ~ -5 ~ loot commands:rng/cryo_skeleton_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.cryo_skeleton_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{cryo_skeleton_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" entered the chill zone.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was dismembered by Cryo Skeleton.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was frozen solid by Cryo Skeleton.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" isn't built for the cold.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
