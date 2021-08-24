loot spawn ~ -5 ~ loot commands:rng/shadow_death
execute as @e[type=item,nbt={Item:{tag:{shadow_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{shadow_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" melted, but not into the shadows.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was consumed by darkness.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was lost in the shadows.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
