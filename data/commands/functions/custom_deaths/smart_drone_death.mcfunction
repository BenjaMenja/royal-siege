loot spawn ~ -5 ~ loot commands:rng/smart_drone_death
execute as @e[type=item,nbt={Item:{tag:{smart_drone_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{smart_drone_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was vaporized by a drone laser.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" doesn't understand space technology.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was evaporated by a drone laser.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
