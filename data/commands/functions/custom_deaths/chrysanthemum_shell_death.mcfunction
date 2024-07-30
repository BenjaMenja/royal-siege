execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

loot spawn ~ -5 ~ loot commands:rng/chrysanthemum_shell_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.chrysanthemum_shell_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{chrysanthemum_shell_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" got front row tickets to the firework show.","color":"white"}]

execute if score #rng RNG matches 2 if entity @s[team=Red] run tellraw @a [{"selector":"@s"},{"text":" was shelled by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=15}]"},{"text":".","color":"white"}]

execute if score #rng RNG matches 2 if entity @s[team=Blue] run tellraw @a [{"selector":"@s"},{"text":" was shelled by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=15}]"},{"text":".","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" ate a mouthful of gunpowder.","color":"white"}]

execute if entity @s[team=Red] as @a[team=Blue,scores={Kit=15}] run function commands:other/sparkler_upgrade

execute if entity @s[team=Blue] as @a[team=Red,scores={Kit=15}] run function commands:other/sparkler_upgrade

scoreboard players reset #rng RNG

schedule function commands:custom_deaths/remove_fireball_fire 3

function commands:custom_deaths/advancement_remove