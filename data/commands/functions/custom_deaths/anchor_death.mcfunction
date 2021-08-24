loot spawn ~ -5 ~ loot commands:rng/anchor_death
execute as @e[type=item,nbt={Item:{tag:{anchor_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{anchor_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was thrown overboard by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" keeled over.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" became a victim of keel hauling.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
