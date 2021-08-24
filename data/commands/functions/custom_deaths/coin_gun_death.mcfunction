loot spawn ~ -5 ~ loot commands:rng/coin_gun_death
execute as @e[type=item,nbt={Item:{tag:{coin_gun_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{coin_gun_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was minted into a Siege Coin.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was blasted with molten gold.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was cashed in.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
