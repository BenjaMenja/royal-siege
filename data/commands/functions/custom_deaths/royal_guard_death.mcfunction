loot spawn ~ -5 ~ loot commands:rng/royal_guard_death
execute as @e[type=item,nbt={Item:{tag:{royal_guard_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{royal_guard_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was stopped by the Royal Guards.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was taken down by the Royal Guards.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was defeated by the Royal Guards.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
