loot spawn ~ -5 ~ loot commands:rng/c4_death
execute as @e[type=item,nbt={Item:{tag:{c4_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{c4_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was definitely not expecting that.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" stepped on a land mine.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" watched their health go down real quick.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
