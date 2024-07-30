execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

loot spawn ~ -5 ~ loot commands:rng/coin_gun_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.coin_gun_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{coin_gun_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was minted into a Siege Coin.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was blasted with molten gold.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was cashed in.","color":"white"}]

scoreboard players reset #rng RNG

execute if entity @s[team=Red] if entity @a[team=Blue,scores={Kit=13},tag=!upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive

execute if entity @s[team=Red] if entity @a[team=Blue,scores={Kit=13},tag=upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive_upgraded

execute if entity @s[team=Blue] if entity @a[team=Red,scores={Kit=13},tag=!upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive

execute if entity @s[team=Blue] if entity @a[team=Red,scores={Kit=13},tag=upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive_upgraded

function commands:custom_deaths/advancement_remove
