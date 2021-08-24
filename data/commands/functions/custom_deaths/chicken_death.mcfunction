loot spawn ~ -5 ~ loot commands:rng/chicken_death
execute as @e[type=item,nbt={Item:{tag:{chicken_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{chicken_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" chickened out of the fight.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" got egged real bad.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" clucked their last cluck.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove