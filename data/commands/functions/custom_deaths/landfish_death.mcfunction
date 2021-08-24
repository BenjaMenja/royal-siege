loot spawn ~ -5 ~ loot commands:rng/landfish_death
execute as @e[type=item,nbt={Item:{tag:{landfish_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{landfish_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was chewed up by a Land Fish.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was eaten alive by a Land Fish.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was fed to a Land Fish.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove