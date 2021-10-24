loot spawn ~ -5 ~ loot commands:rng/rocket_death
execute as @e[type=item,nbt={Item:{tag:{rocket_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{rocket_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was vaporized by a rocket.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" couldn't escape the blast.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" got a front row seat to a failed rocket launch.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
