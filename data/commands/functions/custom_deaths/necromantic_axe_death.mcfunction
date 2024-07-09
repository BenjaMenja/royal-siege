loot spawn ~ -5 ~ loot commands:rng/necromantic_axe_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.necrodeath store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{necrodeath:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was turned into a Hatchling.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was sacrificed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was reassembled into a tiny little dragon.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was hacked to bits.","color":"white"}]

execute if entity @a[scores={KillP=1..,Kit=7}] if entity @s[scores={Kit=12}] run advancement grant @a[scores={KillP=1..,Kit=7}] only commands:hidden_advancements/draconic_violation

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
