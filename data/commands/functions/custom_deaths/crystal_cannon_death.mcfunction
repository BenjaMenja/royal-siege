loot spawn ~ -5 ~ loot commands:rng/crystal_cannon_death
execute as @e[type=item,nbt={Item:{tag:{crystal_cannon_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{crystal_cannon_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was crystallized.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was nuked by an End Crystal.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was blasted to bits by an End Crystal.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove