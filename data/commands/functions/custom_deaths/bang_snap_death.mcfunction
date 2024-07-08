loot spawn ~ -5 ~ loot commands:rng/bang_snap_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.bang_snap_death store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bang_snap_death:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was snapped out of existence.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":"'s body popped into dust.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" went out with a bang.","color":"white"}]

execute if entity @s[team=Red] as @a[team=Blue,scores={Kit=15}] run function commands:other/sparkler_upgrade

execute if entity @s[team=Blue] as @a[team=Red,scores={Kit=15}] run function commands:other/sparkler_upgrade

scoreboard players reset #rng RNG

schedule function commands:custom_deaths/remove_fireball_fire 3

function commands:custom_deaths/advancement_remove