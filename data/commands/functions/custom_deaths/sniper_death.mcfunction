loot spawn ~ -5 ~ loot commands:rng/sniper_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.sniper_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{sniper_death:1b}}}}]

execute if score #rng RNG matches 1 if entity @s[team=Red] run tellraw @a [{"selector":"@s[team=Red] "},{"text":" was sniped by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5}]"}]

execute if score #rng RNG matches 2 if entity @s[team=Red] run tellraw @a [{"selector":"@s[team=Red] "},{"text":" was shot down by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5}]"}]

execute if score #rng RNG matches 3 if entity @s[team=Red] run tellraw @a [{"selector":"@s[team=Red] "},{"text":" was picked off by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5}]"}]

execute if score #rng RNG matches 1 if entity @s[team=Blue] run tellraw @a [{"selector":"@s[team=Blue] "},{"text":" was sniped by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5}]"}]

execute if score #rng RNG matches 2 if entity @s[team=Blue] run tellraw @a [{"selector":"@s[team=Blue] "},{"text":" was shot down by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5}]"}]

execute if score #rng RNG matches 3 if entity @s[team=Blue] run tellraw @a [{"selector":"@s[team=Blue] "},{"text":" was picked off by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5}]"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
