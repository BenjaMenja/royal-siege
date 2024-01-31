loot spawn ~ -5 ~ loot commands:rng/pop_rocks_death
execute as @e[type=item,nbt={Item:{tag:{pop_rocks_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{pop_rocks_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" spontaneously combusted.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":"'s body popped into dust.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" couldn't handle the heat.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
