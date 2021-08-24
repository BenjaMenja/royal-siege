loot spawn ~ -5 ~ loot commands:rng/minion_death
execute as @e[type=item,nbt={Item:{tag:{minion_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{minion_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was eaten alive by a Wizard Minion.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was hunted down by a Wizard Minion.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" let their extremities get torn off by a Wizard Minion.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove