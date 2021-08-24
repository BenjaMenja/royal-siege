loot spawn ~ -5 ~ loot commands:rng/playing_card_death
execute as @e[type=item,nbt={Item:{tag:{playing_card_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{playing_card_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was discarded.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" got outplayed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" needs to work on their poker game.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
