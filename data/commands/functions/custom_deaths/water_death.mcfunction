loot spawn ~ -5 ~ loot commands:rng/water_death
execute as @e[type=item,nbt={Item:{tag:{water_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{water_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" lost a breath holding challenge.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" thought they had gills.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" became shark food.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s "},{"text":" is stupid.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
