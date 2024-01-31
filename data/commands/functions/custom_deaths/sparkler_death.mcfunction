loot spawn ~ -5 ~ loot commands:rng/sparkler_death
execute as @e[type=item,nbt={Item:{tag:{sparkler_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{sparkler_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" fizzled out.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" burst into sparks.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was set ablaze.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
